import 'package:course_challenge/app/modules/home-page/models/your_courses_model.dart';
import 'package:flutter/animation.dart';

class YourCoursesRepository {
  List<YoursCoursesModel> getAll() {
    return course;
  }

  List<YoursCoursesModel> course = [
    YoursCoursesModel(
      courseID: 1,
      courseTitle: 'Spanish',
      color: const Color.fromRGBO(255, 172, 43, 1),
    ),
    YoursCoursesModel(
      courseID: 2,
      courseTitle: 'Italian',
      color: const Color.fromRGBO(0, 199, 82, 1),
    ),
    YoursCoursesModel(
      courseID: 3,
      courseTitle: 'English',
      color: const Color.fromRGBO(19, 146, 219, 1),
    ),
    YoursCoursesModel(
      courseID: 4,
      courseTitle: 'Spanish',
      color: const Color.fromRGBO(255, 172, 43, 1),
    ),
  ];
}
