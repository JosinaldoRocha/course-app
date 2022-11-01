import 'package:flutter/material.dart';

class TaskModel {
  late String question;
  late String answerOptions;
  late Color color;
  late bool taskFinished;
  late int taskId;
  late int lessonId;

  TaskModel({
    required this.question,
    required this.answerOptions,
    required this.color,
    required this.taskFinished,
    required this.taskId,
    required this.lessonId,
  });

  void changeTaskFinished(bool finished) {
    taskFinished = finished;
  }
}
