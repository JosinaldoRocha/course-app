import 'package:course_challenge/app/modules/course-page/models/lesson_model.dart';
import 'package:flutter/material.dart';

class LessonRepository {
  List<LessonModel> getAll(int idLesson) {
    lessons.retainWhere((element) => element.lessonID == idLesson);
    return lessons;
  }

  List<LessonModel> lessons = [
    LessonModel(
      color: const Color.fromRGBO(250, 171, 59, 1),
      lessonID: 3,
      assetImage: 'assets/images/notes.png',
      lessonTitle: 'Basics',
    ),
    LessonModel(
      color: const Color.fromRGBO(240, 62, 86, 1),
      lessonID: 2,
      assetImage: 'assets/images/suitcase.png',
      lessonTitle: 'Occupazioni',
    ),
    LessonModel(
      color: const Color.fromRGBO(85, 146, 217, 1),
      lessonID: 3,
      assetImage: 'assets/images/vector1.png',
      lessonTitle: 'Conversation',
    ),
    LessonModel(
      color: const Color.fromRGBO(47, 199, 92, 1),
      lessonID: 2,
      assetImage: 'assets/images/localization.png',
      lessonTitle: 'Posti',
    ),
    LessonModel(
      color: const Color.fromRGBO(152, 57, 240, 1),
      lessonID: 3,
      assetImage: 'assets/images/people.png',
      lessonTitle: 'Family members',
    ),
    LessonModel(
      color: const Color.fromRGBO(45, 81, 189, 1),
      lessonID: 1,
      assetImage: 'assets/images/apple.png',
      lessonTitle: 'Alimentos',
    ),
  ];
}
