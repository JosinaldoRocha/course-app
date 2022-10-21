import 'package:course_challenge/app/modules/course-page/models/lesson_model.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class PercentIndicatorCoursePage extends StatelessWidget {
  const PercentIndicatorCoursePage({super.key, required this.lesson});
  final LessonModel lesson;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(0),
            child: LinearPercentIndicator(
                alignment: MainAxisAlignment.center,
                width: 145,
                lineHeight: 5,
                percent: lesson.percent,
                barRadius: const Radius.circular(50),
                backgroundColor: const Color.fromRGBO(196, 196, 196, 1),
                progressColor: lesson.progressBarColor),
          ),
        ],
      ),
    );
  }
}
