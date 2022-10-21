import 'package:course_challenge/app/modules/course-page/models/lesson_model.dart';
import 'package:course_challenge/app/modules/course-page/widgets/app-bar/app_bar_course.dart';
import 'package:course_challenge/app/modules/course-page/widgets/yours-courses/grid_view_course.dart';
import 'package:course_challenge/app/modules/home/models/your_courses_model.dart';
import 'package:flutter/material.dart';

import 'repositories/lesson_repository.dart';

class CoursePage extends StatefulWidget {
  const CoursePage({super.key, required this.course});
  final YoursCoursesModel course;

  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  final lessonRepository = LessonRepository();

  List<LessonModel> allLesson = [];
  bool isLoading = false;

  void loadLessons() async {
    isLoading = true;
    final result = await lessonRepository.getAll(widget.course.id);
    setState(() {
      isLoading = false;
      allLesson = result;
    });
  }

  @override
  void initState() {
    super.initState();
    loadLessons();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppBarCoursePageWidget(course: widget.course),
          if (isLoading)
            const CircularProgressIndicator()
          else
            Expanded(
              child: GridViewCoursePageWidget(
                allLessons: allLesson,
                course: widget.course,
              ),
            ),
        ],
      ),
    );
  }
}
