import 'package:course_challenge/app/modules/course-page/models/lesson_model.dart';
import 'package:course_challenge/app/modules/tasks-page/model/task_model.dart';
import 'package:course_challenge/app/modules/tasks-page/task-repository/task_repository.dart';
import 'package:course_challenge/app/modules/tasks-page/widgets/questions/questions_task_page.dart';
import 'package:flutter/material.dart';

class TasksPage extends StatefulWidget {
  const TasksPage({super.key, required this.lesson});
  final LessonModel lesson;

  @override
  State<TasksPage> createState() => _TasksPageState();
}

class _TasksPageState extends State<TasksPage> {
  List<TaskModel> allTasks = [];
  void loadAllTasks() {
    TaskRepository().saveAllTasks();
  }

  void loadUpdatedTasks() {
    final newAllTasks = TaskRepository().getAll(widget.lesson.lessonId);
    setState(() {
      allTasks = newAllTasks;
    });
  }

  @override
  void initState() {
    super.initState();
    loadAllTasks();
    loadUpdatedTasks();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        child: Icon(
          Icons.arrow_back_ios_new,
          size: 35,
          color: widget.lesson.color,
        ),
        onPressed: () {
          Navigator.pop(
            context,
            widget.lesson,
          );
        },
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30,
        ),
        child: ListView.separated(
          itemCount: allTasks.length,
          itemBuilder: (context, index) {
            final task = allTasks[index];
            return QuestionsTaskPage(
              task: task,
              changeStateTask: () async {
                await TaskRepository.changeStateTask(task.taskId, task);
                loadUpdatedTasks();
              },
              index: index,
              lesson: widget.lesson,
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(height: 15);
          },
        ),
      ),
    );
  }
}
