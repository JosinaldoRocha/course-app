import 'package:course_challenge/app/modules/course-page/models/lesson_model.dart';
import 'package:course_challenge/app/modules/tasks-page/model/task_model.dart';
import 'package:course_challenge/app/shared/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class QuestionsTaskPage extends StatefulWidget {
  const QuestionsTaskPage(
      {super.key,
      required this.task,
      required this.changeStateTask,
      required this.index,
      required this.lesson});
  final TaskModel task;
  final LessonModel lesson;
  final int index;
  final Function() changeStateTask;

  @override
  State<QuestionsTaskPage> createState() => _QuestionsTaskPageState();
}

class _QuestionsTaskPageState extends State<QuestionsTaskPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextWidget(
          text: 'Exercício ${widget.index + 1}',
          size: 22,
          color: widget.lesson.color,
          weight: FontWeight.w500,
          align: TextAlign.center,
        ),
        const SizedBox(height: 5),
        Container(
          decoration: BoxDecoration(
            color: widget.lesson.color,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: _columnOfTasks(),
          ),
        ),
      ],
    );
  }

  Widget _columnOfTasks() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextWidget(
          text: widget.task.question,
          size: 20,
          color: Colors.white,
          weight: FontWeight.w500,
          align: TextAlign.start,
        ),
        const SizedBox(height: 10),
        TextWidget(
          text: widget.task.answerOptions,
          size: 20,
          color: Colors.white,
          weight: FontWeight.w500,
          align: TextAlign.start,
        ),
        SizedBox(
          width: 80,
          height: 45,
          child: TextField(
            controller: widget.task.taskController,
            decoration: const InputDecoration(
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
              value: widget.task.taskFinished,
              onChanged: (value) {
                setState(() {
                  widget.task.changeTaskFinished(value!);
                });
                widget.changeStateTask();
              },
            ),
          ],
        )
      ],
    );
  }
}
