import 'package:course_challenge/app/modules/home-page/models/your_courses_model.dart';
import 'package:course_challenge/app/modules/home-page/repositories/your_courses_repository.dart';
import 'package:course_challenge/app/modules/home-page/widgets/row-your-courses/progress_indicator_your_courses.dart';
import 'package:course_challenge/app/shared/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class ListViewYourCourses extends StatefulWidget {
  const ListViewYourCourses({
    super.key,
  });

  @override
  State<ListViewYourCourses> createState() => _ListViewYourCoursesState();
}

class _ListViewYourCoursesState extends State<ListViewYourCourses> {
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
        itemBuilder: (context, course) {
          return GestureDetector(
            onTap: () async {
              final result = await Navigator.pushNamed(
                context,
                '/course-page',
                arguments: yourCourses[course],
              );
              if (result != null) {
                setState(() {});
              }
            },
            child: _buildYourCourses(yourCourses[course]),
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
        color: course.color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 65,
            top: 32,
            child: ProgressIndicatorYourCourses(
              course: course,
            ),
          ),
          const Positioned(
            left: 71,
            top: 48,
            child: TextWidget(
              text: '80%',
              size: 8,
              color: Color.fromRGBO(52, 52, 52, 1),
              weight: FontWeight.w700,
              align: TextAlign.start,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
            ],
          ),
        ],
      ),
    );
  }
}
