import 'package:course_challenge/app/modules/course-page/models/lesson_model.dart';
import 'package:flutter/material.dart';

class LessonRepository {
  Future<List<LessonModel>> getAll(int courseId) async {
    await Future.delayed(Duration(seconds: 2));
    lessons.retainWhere((element) => element.courseId == courseId);
    return lessons;
  }

  List<LessonModel> lessons = [
    LessonModel(
      assetImage: 'assets/images/notes.png',
      completedTasks: 2,
      totalTasks: 6,
      lessonTitle: 'Basicos',
      progressBarColor: const Color.fromRGBO(250, 171, 59, 1),
      courseId: 1,
    ),
    LessonModel(
      assetImage: 'assets/images/suitcase.png',
      completedTasks: 5,
      totalTasks: 5,
      lessonTitle: 'MAma mia',
      progressBarColor: const Color.fromRGBO(240, 62, 86, 1),
      courseId: 2,
    ),
    LessonModel(
      assetImage: 'assets/images/vector1.png',
      completedTasks: 5,
      totalTasks: 5,
      lessonTitle: 'Conversation',
      progressBarColor: const Color.fromRGBO(85, 146, 217, 1),
      courseId: 2,
    ),
    LessonModel(
      assetImage: 'assets/images/localization.png',
      completedTasks: 5,
      totalTasks: 5,
      lessonTitle: 'Places',
      courseId: 2,
      progressBarColor: const Color.fromRGBO(47, 199, 92, 1),
    ),
    LessonModel(
      assetImage: 'assets/images/people.png',
      completedTasks: 5,
      totalTasks: 5,
      courseId: 2,
      lessonTitle: 'Family members',
      progressBarColor: const Color.fromRGBO(152, 57, 240, 1),
    ),
    LessonModel(
      assetImage: 'assets/images/apple.png',
      completedTasks: 0,
      totalTasks: 5,
      courseId: 3,
      lessonTitle: 'Foods',
      progressBarColor: const Color.fromRGBO(45, 81, 189, 1),
    ),
  ];
}
