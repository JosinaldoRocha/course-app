import 'package:flutter/animation.dart';

class LessonModel {
  late String lessonTitle;
  late String assetImage;
  late Color progressBarColor;
  late int courseId;
  late int totalTasks;
  late int completedTasks;

  double get percent => completedTasks / totalTasks;

  String get progressText => '$completedTasks / $totalTasks';

  LessonModel({
    required this.assetImage,
    required this.lessonTitle,
    required this.progressBarColor,
    required this.courseId,
    required this.completedTasks,
    required this.totalTasks,
  });
}
