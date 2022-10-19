import 'package:course_challenge/app/modules/course-page/repositories/lesson_repository.dart';
import 'package:course_challenge/app/modules/course-page/widgets/yours-courses/main_card_your_courses.dart';
import 'package:flutter/material.dart';

class GridViewCoursePageWidget extends StatefulWidget {
  const GridViewCoursePageWidget({super.key});

  @override
  State<GridViewCoursePageWidget> createState() =>
      _GridViewCoursePageWidgetState();
}

class _GridViewCoursePageWidgetState extends State<GridViewCoursePageWidget> {
  final repository = LessonRepository().getAll();

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
      itemCount: repository.length,
      itemBuilder: (context, index) {
        return Center(
          child: CardCoursePageWidget(lesson: repository[index]),
        );
      },
    );
  }
}
