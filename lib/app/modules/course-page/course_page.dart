import 'package:course_challenge/app/modules/course-page/models/lesson_model.dart';
import 'package:course_challenge/app/modules/course-page/repositories/lesson_repository.dart';
import 'package:course_challenge/app/modules/course-page/widgets/app-bar/app_bar_course.dart';
import 'package:course_challenge/app/modules/course-page/widgets/yours-courses/grid-view/grid_view_course.dart';
import 'package:course_challenge/app/modules/home-page/models/your_courses_model.dart';
import 'package:course_challenge/app/modules/tasks-page/task-repository/task_repository.dart';
import 'package:flutter/material.dart';

class CoursePage extends StatefulWidget {
  const CoursePage({super.key, required this.course});
  final YoursCoursesModel course;

  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  List<LessonModel> allLessons = [];
  void loadAllTasks() {
    TaskRepository().saveAllTasks();
  }

  void loadLessons() {
    final result = LessonRepository().getAll(widget.course.courseID);
    setState(
      () {
        allLessons = result;
      },
    );
  }

  @override
  void initState() {
    super.initState();
    loadAllTasks();
    loadLessons();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppBarCoursePageWidget(course: widget.course),
          Expanded(
            child: GridViewCoursePageWidget(
              lessonList: allLessons,
            ),
          ),
        ],
      ),
    );
  }
}
