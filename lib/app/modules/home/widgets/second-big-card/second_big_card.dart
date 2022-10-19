import 'package:course_challenge/app/modules/home/widgets/second-big-card/main_column.dart';
import 'package:flutter/material.dart';

class SecondBigCardWidget extends StatelessWidget {
  const SecondBigCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 194,
      width: 360,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            spreadRadius: 0,
            blurRadius: 25,
            offset: Offset(0, 4),
            color: Color.fromRGBO(0, 0, 0, 0.25),
          ),
        ],
        color: const Color.fromRGBO(255, 255, 255, 1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/image.png',
            width: 170,
            height: 170,
          ),
          const SizedBox(width: 6),
          const MainColumnSecondBigCard(),
          const SizedBox(width: 10),
        ],
      ),
    );
  }
}
