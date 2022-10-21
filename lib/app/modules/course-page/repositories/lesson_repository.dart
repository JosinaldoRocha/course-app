import 'package:course_challenge/app/modules/course-page/models/lesson_model.dart';
import 'package:flutter/material.dart';

class LessonRepository {
  List<LessonModel> getAll() {
    return lessons;
  }

  List<LessonModel> lessons = [
    LessonModel(
        assetImage: 'assets/images/notes.png',
        progressNumber: '4 / 5',
        lessonTitle: 'Basics',
        progressBarColor: const Color.fromRGBO(250, 171, 59, 1),
        progressBarPercentage: 0.8),
    LessonModel(
        assetImage: 'assets/images/suitcase.png',
        progressNumber: '1 / 5',
        lessonTitle: 'Occupations',
        progressBarColor: const Color.fromRGBO(240, 62, 86, 1),
        progressBarPercentage: 0.3),
    LessonModel(
        assetImage: 'assets/images/vector1.png',
        progressNumber: '3 / 5',
        lessonTitle: 'Conversation',
        progressBarColor: const Color.fromRGBO(85, 146, 217, 1),
        progressBarPercentage: 0.8),
    LessonModel(
        assetImage: 'assets/images/localization.png',
        progressNumber: '1 / 5',
        lessonTitle: 'Places',
        progressBarColor: const Color.fromRGBO(47, 199, 92, 1),
        progressBarPercentage: 0.3),
    LessonModel(
        assetImage: 'assets/images/people.png',
        progressNumber: '3 / 5',
        lessonTitle: 'Family members',
        progressBarColor: const Color.fromRGBO(152, 57, 240, 1),
        progressBarPercentage: 0.8),
    LessonModel(
        assetImage: 'assets/images/apple.png',
        progressNumber: '2 / 5',
        lessonTitle: 'Foods',
        progressBarColor: const Color.fromRGBO(45, 81, 189, 1),
        progressBarPercentage: 0.4),
  ];
}
