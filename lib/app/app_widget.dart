import 'package:course_challenge/app/modules/course-page/models/lesson_model.dart';
import 'package:course_challenge/app/modules/home-page/home_page.dart';
import 'package:course_challenge/app/modules/home-page/models/your_courses_model.dart';
import 'package:course_challenge/app/modules/task-page/task_page.dart';
import 'package:course_challenge/app/modules/tasks-page-menu/tasks_page_menu.dart';
import 'package:flutter/material.dart';

import 'modules/course-page/course_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/course-page': (context) => CoursePage(
              course: ModalRoute.of(context)!.settings.arguments
                  as YoursCoursesModel,
            ),
        '/tasks-page-menu': (context) => TasksPageMenu(
              lesson: ModalRoute.of(context)?.settings.arguments as LessonModel,
            ),
        '/task-page': (context) => const TaskPage(),
      },
    );
  }
}
