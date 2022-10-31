import 'package:course_challenge/app/modules/home-page/widgets/drawer.dart';
import 'package:course_challenge/app/modules/home-page/widgets/first-big-card/first_big_card.dart';
import 'package:course_challenge/app/modules/home-page/widgets/row-your-courses/list_view_your_curses.dart';
import 'package:course_challenge/app/modules/home-page/widgets/row_perfil.dart';
import 'package:course_challenge/app/modules/home-page/widgets/row_top_screen.dart';
import 'package:course_challenge/app/modules/home-page/widgets/second-big-card/second_big_card.dart';
import 'package:course_challenge/app/shared/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(27, 52, 15, 57),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            RowTopScreenWidget(),
            SizedBox(height: 62),
            RowPerfilWidget(),
            SizedBox(height: 46),
            TextWidget(
              text: "Welcome !",
              size: 36,
              color: Color.fromRGBO(23, 42, 135, 1),
              weight: FontWeight.w700,
              align: TextAlign.start,
            ),
            SizedBox(height: 36),
            FirstBigCardWidget(),
            SizedBox(height: 36),
            TextWidget(
              text: 'Your courses',
              size: 14,
              color: Color.fromRGBO(101, 101, 101, 1),
              weight: FontWeight.w700,
              align: TextAlign.start,
            ),
            SizedBox(height: 22),
            ListViewYourCourses(),
            SizedBox(height: 22),
            TextWidget(
              text: 'Popular courses',
              size: 14,
              color: Color.fromRGBO(101, 101, 101, 1),
              weight: FontWeight.w700,
              align: TextAlign.start,
            ),
            SizedBox(height: 22),
            SecondBigCardWidget(),
            SizedBox(height: 22),
            TextWidget(
              text: 'Your courses',
              size: 14,
              color: Color.fromRGBO(101, 101, 101, 1),
              weight: FontWeight.w700,
              align: TextAlign.start,
            ),
            SizedBox(height: 22),
            ListViewYourCourses(),
          ],
        ),
      ),
    );
  }
}
