import 'package:flutter/material.dart';

class TaskModel {
  late String question;
  late String answerOptions;
  late Color color;
  late bool taskFinished;
  late int taskId;
  late int lessonId;
  late String firstCorrectAnswer;
  late String secondCorrectAnswer;
  bool positiveAnswer = false;
  late TextEditingController taskController;

  TaskModel({
    required this.question,
    required this.answerOptions,
    required this.color,
    required this.taskFinished,
    required this.taskId,
    required this.lessonId,
    required this.firstCorrectAnswer,
    required this.secondCorrectAnswer,
    required this.taskController,
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
