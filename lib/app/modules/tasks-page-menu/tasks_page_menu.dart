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
    final newAllTasks = TaskRepository().getAll(widget.lesson.lessonID);
    setState(() {
      allTasks = newAllTasks;
      //widget.lesson.numberOfTasks = allTasks.length;
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
      // appBar: AppBar(
      //   iconTheme: const IconThemeData(color: Colors.black),
      //   backgroundColor: Colors.white10,
      //   elevation: 0,
      //   title: const TextWidget(
      //     text: 'Lições',
      //     size: 20,
      //     color: Colors.black,
      //     weight: FontWeight.w500,
      //     align: TextAlign.center,
      //   ),
      // ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: const Color.fromRGBO(45, 81, 189, 1),
        label: const TextWidget(
          text: 'Voltar',
          size: 22,
          color: Colors.white,
          weight: FontWeight.w500,
          align: TextAlign.center,
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
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextWidget(
                  text: 'Exercício ${index + 1}',
                  size: 22,
                  color: Colors.black,
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
                    padding: const EdgeInsets.all(5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextWidget(
                          text: task.taskTitle,
                          size: 20,
                          color: Colors.white,
                          weight: FontWeight.w500,
                          align: TextAlign.start,
                        ),
                        const SizedBox(height: 10),
                        TextWidget(
                          text: task.opciones,
                          size: 20,
                          color: Colors.white,
                          weight: FontWeight.w500,
                          align: TextAlign.start,
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
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(height: 15);
          },
        ),
      ),
    );
  }
}
