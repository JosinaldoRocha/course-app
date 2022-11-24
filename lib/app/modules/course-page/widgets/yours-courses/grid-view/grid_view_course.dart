import 'package:course_challenge/app/modules/course-page/models/lesson_model.dart';
import 'package:course_challenge/app/modules/course-page/widgets/yours-courses/main-card/main_card_your_courses.dart';
import 'package:course_challenge/app/modules/home-page/repositories/your_courses_repository.dart';
import 'package:flutter/material.dart';

class GridViewCoursePageWidget extends StatefulWidget {
  const GridViewCoursePageWidget({
    super.key,
    required this.lessonList,
  });
  final List<LessonModel> lessonList;

  @override
  State<GridViewCoursePageWidget> createState() =>
      _GridViewCoursePageWidgetState();
}

class _GridViewCoursePageWidgetState extends State<GridViewCoursePageWidget> {
  final yoursCourses = YourCoursesRepository().getAll();
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
      itemCount: widget.lessonList.length,
      itemBuilder: (context, lesson) {
        return GestureDetector(
          onTap: () async {
            final result = await Navigator.pushNamed(
              context,
              '/tasks-page',
              arguments: widget.lessonList[lesson],
            );
            if (result != null) {
              setState(() {});
            }
          },
          child: Center(
            child: CardCoursePageWidget(
              lesson: widget.lessonList[lesson],
            ),
          ),
        );
      },
    );
  }
}
