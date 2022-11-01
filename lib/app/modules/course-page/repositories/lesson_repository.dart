import 'package:course_challenge/app/modules/course-page/models/lesson_model.dart';
import 'package:flutter/material.dart';

class LessonRepository {
  List<LessonModel> getAll(int idLesson) {
    lessons.retainWhere((element) => element.courseId == idLesson);
    return lessons;
  }

  List<LessonModel> lessons = [
    LessonModel(
      color: const Color.fromRGBO(250, 171, 59, 1),
      courseId: 3,
      assetImage: 'assets/images/notes.png',
      lessonTitle: 'Basics',
      lessonId: 1,
    ),
    LessonModel(
      color: const Color.fromRGBO(240, 62, 86, 1),
      courseId: 2,
      assetImage: 'assets/images/suitcase.png',
      lessonTitle: 'Occupazioni',
      lessonId: 2,
    ),
    LessonModel(
      color: const Color.fromRGBO(85, 146, 217, 1),
      courseId: 3,
      assetImage: 'assets/images/vector1.png',
      lessonTitle: 'Conversation',
      lessonId: 3,
    ),
    LessonModel(
      color: const Color.fromRGBO(47, 199, 92, 1),
      courseId: 2,
      assetImage: 'assets/images/localization.png',
      lessonTitle: 'Posti',
      lessonId: 4,
    ),
    LessonModel(
      color: const Color.fromRGBO(152, 57, 240, 1),
      courseId: 3,
      assetImage: 'assets/images/people.png',
      lessonTitle: 'Family members',
      lessonId: 5,
    ),
    LessonModel(
      color: const Color.fromRGBO(45, 81, 189, 1),
      courseId: 1,
      assetImage: 'assets/images/apple.png',
      lessonTitle: 'Alimentos',
      lessonId: 6,
    ),
  ];
}
