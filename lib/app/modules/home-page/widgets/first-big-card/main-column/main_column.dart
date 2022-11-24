import 'package:course_challenge/app/shared/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class MainColumnFirstBigCard extends StatelessWidget {
  const MainColumnFirstBigCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 80,
          height: 23,
          decoration: BoxDecoration(
              color: const Color.fromRGBO(23, 42, 135, 1),
              borderRadius: BorderRadius.circular(50)),
          child: const Center(
            child: TextWidget(
              text: 'Intermediate',
              size: 11,
              color: Color.fromRGBO(255, 255, 255, 1),
              weight: FontWeight.w400,
              align: TextAlign.start,
            ),
          ),
        ),
        const SizedBox(height: 24),
        const TextWidget(
          text: "Today's\nchallenge",
          size: 24,
          color: Color.fromRGBO(23, 42, 135, 1),
          weight: FontWeight.w700,
          align: TextAlign.start,
        ),
        const SizedBox(height: 24),
        const TextWidget(
          text: 'Take this lesson to earn a\nnew milestone',
          size: 12,
          color: Color.fromRGBO(101, 101, 101, 1),
          weight: FontWeight.w400,
          align: TextAlign.start,
        ),
      ],
    );
  }
}
