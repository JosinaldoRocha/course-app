import 'package:course_challenge/app/modules/course-page/models/card_spanish_page_model.dart';
import 'package:course_challenge/app/modules/course-page/widgets/percent_indicator_course.dart';
import 'package:course_challenge/app/shared/text_widget.dart';
import 'package:flutter/material.dart';

class ColumnCardCoursePageWidget extends StatelessWidget {
  const ColumnCardCoursePageWidget({super.key, required this.lesson});
  final LessonModel lesson;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 25, 0, 17),
      child: Column(
        children: [
          Container(
            width: 77,
            height: 77,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(255, 255, 255, 1),
              borderRadius: BorderRadius.circular(50),
              boxShadow: const [
                BoxShadow(
                  spreadRadius: 0,
                  blurRadius: 25,
                  offset: Offset(0, 4),
                  color: Color.fromRGBO(0, 0, 0, 0.25),
                ),
              ],
            ),
            child: Image.asset(
              lesson.assetImage,
              width: 32.03,
              height: 41,
            ),
          ),
          const SizedBox(height: 16),
          TextWidget(
            text: lesson.text,
            size: 14,
            color: const Color.fromRGBO(23, 42, 135, 1),
            weight: FontWeight.w500,
            align: TextAlign.center,
          ),
          const SizedBox(height: 6),
          TextWidget(
            text: lesson.progressNumber,
            size: 18,
            color: const Color.fromRGBO(23, 42, 135, 1),
            weight: FontWeight.w500,
            align: TextAlign.center,
          ),
          const SizedBox(height: 6),
          PercentIndicatorCoursePage(lesson: lesson),
        ],
      ),
    );
  }
}
