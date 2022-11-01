import 'package:course_challenge/app/modules/course-page/models/lesson_model.dart';
import 'package:course_challenge/app/modules/tasks-page-menu/model/task_model.dart';
import 'package:course_challenge/app/modules/tasks-page-menu/task-repository/task_repository.dart';
import 'package:course_challenge/app/shared/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class TasksPageMenu extends StatefulWidget {
  const TasksPageMenu({super.key, required this.lesson});
  final LessonModel lesson;

  @override
  State<TasksPageMenu> createState() => _TasksPageMenuState();
}

class _TasksPageMenuState extends State<TasksPageMenu> {
  List<TaskModel> allTasks = [];

  void loadTasks() {
    final newAllTasks = TaskRepository().getAll(widget.lesson.lessonId);
    setState(() {
      allTasks = newAllTasks;
    });
  }

  @override
  void initState() {
    super.initState();
    loadTasks();
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
            return _builderQuestion(task, index);
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(height: 15);
          },
        ),
      ),
    );
  }

  Widget _builderQuestion(TaskModel task, int index) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextWidget(
          text: 'Exercício ${index + 1}',
          size: 22,
          color: widget.lesson.color,
          weight: FontWeight.w500,
          align: TextAlign.center,
        ),
        const SizedBox(height: 5),
        Container(
          decoration: BoxDecoration(
            color: task.color,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextWidget(
                  text: task.question,
                  size: 20,
                  color: Colors.white,
                  weight: FontWeight.w500,
                  align: TextAlign.start,
                ),
                const SizedBox(height: 10),
                TextWidget(
                  text: task.answerOptions,
                  size: 20,
                  color: Colors.white,
                  weight: FontWeight.w500,
                  align: TextAlign.start,
                ),
                const SizedBox(
                  width: 80,
                  height: 45,
                  child: TextField(
                    decoration: InputDecoration(
                      label: Text(
                        'R:',
                        style: TextStyle(color: Colors.white),
                      ),
                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const TextWidget(
                      text: 'Finalizar exercício',
                      size: 20,
                      color: Colors.white,
                      weight: FontWeight.w500,
                      align: TextAlign.center,
                    ),
                    Checkbox(
                      value: task.taskFinished,
                      onChanged: (value) {
                        setState(() {
                          task.changeTaskFinished(value!);
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
