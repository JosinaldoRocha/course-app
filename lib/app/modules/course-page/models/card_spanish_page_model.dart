import 'package:flutter/animation.dart';

class LessonModel {
  late String text;
  late String progressNumber;
  late String assetImage;
  late Color progressBarColor;
  late double progressBarPercentage;

  LessonModel({
    required this.assetImage,
    required this.progressNumber,
    required this.text,
    required this.progressBarColor,
    required this.progressBarPercentage,
  });
}
