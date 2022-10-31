import 'package:flutter/material.dart';

class TaskModel {
  late String taskTitle;
  late String lessonTitle;
  late String opciones;
  late Color color;
  late bool taskFinished;
  late int completedTasks;
  late int taskId;
  late int lessonId;

  TaskModel({
    required this.taskTitle,
    required this.lessonTitle,
    required this.opciones,
    required this.color,
    required this.taskFinished,
    required this.completedTasks,
    required this.taskId,
    required this.lessonId,
  });

  void changeTaskFinished(bool finished) {
    taskFinished = finished;
  }
}
