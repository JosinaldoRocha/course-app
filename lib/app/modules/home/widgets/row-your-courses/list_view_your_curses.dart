import 'package:course_challenge/app/modules/home/models/your_courses_model.dart';
import 'package:course_challenge/app/modules/home/repositories/your_courses_repository.dart';
import 'package:course_challenge/app/modules/home/widgets/row-your-courses/progress_indicator_your_courses.dart';
import 'package:course_challenge/app/shared/text_widget.dart';
import 'package:flutter/material.dart';

class ListYourCoursesWidget extends StatefulWidget {
  const ListYourCoursesWidget({
    super.key,
  });

  @override
  State<ListYourCoursesWidget> createState() => _ListYourCoursesWidgetState();
}

class _ListYourCoursesWidgetState extends State<ListYourCoursesWidget> {
  @override
  Widget build(BuildContext context) {
    final yourCourses = YourCoursesRepository().getAll();

    return SizedBox(
      height: 91,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 15,
          );
        },
        itemCount: yourCourses.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              if (yourCourses[index].courseTitle == 'Italian') {
                Navigator.pushNamed(context, '/course-page');
              }
            },
            child: _buildYourCourses(yourCourses[index]),
          );
        },
      ),
    );
  }

  Widget _buildYourCourses(YoursCoursesModel course) {
    return Container(
      padding: const EdgeInsets.fromLTRB(11, 21, 8, 8),
      height: 91,
      width: 114,
      decoration: BoxDecoration(
          color: course.backGroundColor,
          borderRadius: BorderRadius.circular(10)),
      child: Stack(children: [
        Positioned(
            left: 65,
            top: 32,
            child: ProgressIndicatorYourCourses(
              color: course.backGroundColor,
            )),
        Positioned(
          left: 71,
          top: 48,
          child: TextWidget(
            text: course.percentage,
            size: 8,
            color: const Color.fromRGBO(52, 52, 52, 1),
            weight: FontWeight.w700,
            align: TextAlign.start,
          ),
        ),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          TextWidget(
            text: course.courseTitle,
            size: 18,
            color: const Color.fromRGBO(255, 255, 255, 1),
            weight: FontWeight.w700,
            align: TextAlign.start,
          ),
          const SizedBox(height: 4),
          const TextWidget(
            text: 'Begginer',
            size: 12,
            color: Color.fromRGBO(255, 255, 255, 1),
            weight: FontWeight.w700,
            align: TextAlign.start,
          ),
        ]),
      ]),
    );
  }
}
