import 'package:course_challenge/app/modules/course-page/models/lesson_model.dart';
import 'package:course_challenge/app/modules/course-page/widgets/yours-courses/main_column_course.dart';
import 'package:course_challenge/app/modules/home/models/your_courses_model.dart';
import 'package:flutter/material.dart';

class CardCoursePageWidget extends StatelessWidget {
  const CardCoursePageWidget(
      {super.key, required this.lesson, required this.course});
  final LessonModel lesson;
  final YoursCoursesModel course;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 174,
      height: 189,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(255, 255, 255, 1),
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            spreadRadius: 0,
            blurRadius: 25,
            offset: Offset(0, 4),
            color: Color.fromRGBO(0, 0, 0, 0.25),
          ),
        ],
      ),
      child: ColumnCardCoursePageWidget(lesson: lesson, course: course),
    );
  }
}
