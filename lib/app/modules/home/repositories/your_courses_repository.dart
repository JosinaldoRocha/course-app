import 'package:course_challenge/app/modules/home/models/your_courses_model.dart';
import 'package:flutter/animation.dart';

class YourCoursesRepository {
  List<YoursCoursesModel> getAll() {
    return course;
  }

  List<YoursCoursesModel> course = [
    YoursCoursesModel(
        courseTitle: 'Spanish',
        backGroundColor: const Color.fromRGBO(255, 172, 43, 1),
        percentage: '15%'),
    YoursCoursesModel(
        courseTitle: 'Italian',
        backGroundColor: const Color.fromRGBO(0, 199, 82, 1),
        percentage: '15%'),
    YoursCoursesModel(
        courseTitle: 'English',
        backGroundColor: const Color.fromRGBO(19, 146, 219, 1),
        percentage: '15%'),
    YoursCoursesModel(
        courseTitle: 'Spanish',
        backGroundColor: const Color.fromRGBO(255, 172, 43, 1),
        percentage: '15%'),
  ];
}
