import 'package:course_challenge/app/modules/home/home_page.dart';
import 'package:flutter/material.dart';

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
        //'/course-page': (context) =>  CoursePage(),
      },
    );
  }
}
