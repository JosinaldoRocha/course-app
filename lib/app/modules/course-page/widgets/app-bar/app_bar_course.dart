import 'package:course_challenge/app/modules/course-page/widgets/app-bar/drop_down_button_course.dart';
import 'package:course_challenge/app/modules/home-page/models/your_courses_model.dart';
import 'package:course_challenge/app/shared/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class AppBarCoursePageWidget extends StatelessWidget {
  const AppBarCoursePageWidget({super.key, required this.course});
  final YoursCoursesModel course;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 196,
      color: course.color,
      //course.changeColor(),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 32, 0, 38),
        child: Column(
          children: [
            Row(
              children: [
                const SizedBox(width: 11),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context, course);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_new_outlined,
                    size: 29,
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
                const Expanded(
                  child: SizedBox(),
                ),
                const TextWidget(
                  text: 'Course',
                  size: 24,
                  color: Color.fromRGBO(255, 255, 255, 1),
                  weight: FontWeight.w700,
                  align: TextAlign.center,
                ),
                const Expanded(
                  child: SizedBox(),
                ),
                const Icon(
                  Icons.more_vert,
                  size: 40,
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                const SizedBox(width: 28),
              ],
            ),
            const Expanded(
              child: SizedBox(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(width: 52),
                TextWidget(
                  text: course.courseTitle,
                  size: 36,
                  color: const Color.fromRGBO(255, 255, 255, 1),
                  weight: FontWeight.w700,
                  align: TextAlign.center,
                ),
                const Expanded(
                  child: SizedBox(),
                ),
                const DropDownCoursePageWidget(),
                const SizedBox(
                  width: 53,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
