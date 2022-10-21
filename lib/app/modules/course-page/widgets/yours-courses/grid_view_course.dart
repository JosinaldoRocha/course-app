import 'package:course_challenge/app/modules/course-page/models/lesson_model.dart';
import 'package:course_challenge/app/modules/course-page/repositories/lesson_repository.dart';
import 'package:course_challenge/app/modules/course-page/widgets/yours-courses/main_card_your_courses.dart';
import 'package:course_challenge/app/modules/home/models/your_courses_model.dart';
import 'package:flutter/material.dart';

class GridViewCoursePageWidget extends StatefulWidget {
  const GridViewCoursePageWidget({
    super.key,
    required this.course,
    required this.allLessons,
  });
  final List<LessonModel> allLessons;
  final YoursCoursesModel course;

  @override
  State<GridViewCoursePageWidget> createState() =>
      _GridViewCoursePageWidgetState();
}

class _GridViewCoursePageWidgetState extends State<GridViewCoursePageWidget> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.fromLTRB(16, 62, 16, 27),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 22,
        crossAxisSpacing: 12,
        mainAxisExtent: 189,
      ),
      itemCount: widget.allLessons.length,
      itemBuilder: (context, lesson) {
        return Center(
          child: CardCoursePageWidget(
            lesson: widget.allLessons[lesson],
            course: widget.course,
          ),
        );
      },
    );
  }
}
