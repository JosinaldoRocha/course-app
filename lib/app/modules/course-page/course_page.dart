import 'package:course_challenge/app/modules/course-page/widgets/app-bar/app_bar_course.dart';
import 'package:course_challenge/app/modules/course-page/widgets/yours-courses/grid_view_course.dart';
import 'package:course_challenge/app/modules/home/models/your_courses_model.dart';
import 'package:flutter/material.dart';

class CoursePage extends StatefulWidget {
  const CoursePage({super.key, required this.course});
  final YoursCoursesModel course;

  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppBarCoursePageWidget(course: widget.course),
          Expanded(
            child: GridViewCoursePageWidget(teste: widget.course),
          ),
        ],
      ),
    );
  }
}
