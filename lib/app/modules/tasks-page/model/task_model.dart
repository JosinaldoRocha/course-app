import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
part 'task_model.g.dart';

@HiveType(typeId: 0)
class TaskModel extends HiveObject {
  late String question;
  late String answerOptions;
  late Color? color;
  @HiveField(2)
  late bool taskFinished;
  late int taskId;
  late int lessonId;
  @HiveField(5)
  late String firstCorrectAnswer;
  @HiveField(6)
  late String secondCorrectAnswer;
  @HiveField(7)
  bool positiveAnswer = false;
  late TextEditingController? taskController;

  TaskModel({
    required this.question,
    required this.answerOptions,
    this.color,
    required this.taskFinished,
    required this.taskId,
    required this.lessonId,
    required this.firstCorrectAnswer,
    required this.secondCorrectAnswer,
    this.taskController,
  });

  void changeTaskFinished(bool finished) {
    taskFinished = finished;
  }

  void confirmCorrectAnswer(String controller) {
    if (controller == firstCorrectAnswer || controller == secondCorrectAnswer) {
      positiveAnswer = true;
    } else {
      positiveAnswer = false;
    }
  }
}
