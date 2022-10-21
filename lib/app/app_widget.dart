import 'package:course_challenge/app/modules/home/home_page.dart';
import 'package:course_challenge/app/modules/home/models/your_courses_model.dart';
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
      //initialRoute: '/course-page',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/course-page': (context) => CoursePage(
              course: ModalRoute.of(context)?.settings.arguments
                  as YoursCoursesModel,
            ),
      },
    );
  }
}
