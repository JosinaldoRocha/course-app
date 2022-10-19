import 'package:course_challenge/app/shared/text_widget.dart';
import 'package:flutter/material.dart';

class RowPerfilWidget extends StatelessWidget {
  const RowPerfilWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          height: 70,
          width: 70,
          child: CircleAvatar(
            backgroundColor: Color.fromRGBO(196, 196, 196, 1),
          ),
        ),
        const SizedBox(width: 17),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            TextWidget(
              text: 'Piyush Chaurasia',
              size: 18,
              color: Color.fromRGBO(52, 52, 52, 1),
              weight: FontWeight.w500,
              align: TextAlign.start,
            ),
            SizedBox(height: 6),
            TextWidget(
              text: 'United Kingdom',
              size: 18,
              color: Color.fromRGBO(185, 185, 185, 1),
              weight: FontWeight.w500,
              align: TextAlign.start,
            ),
          ],
        ),
      ],
    );
  }
}
