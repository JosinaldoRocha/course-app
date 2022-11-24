import 'package:course_challenge/app/modules/home-page/widgets/first-big-card/circle-avatar/circle_avatar.dart';
import 'package:course_challenge/app/modules/home-page/widgets/first-big-card/main-column/main_column.dart';
import 'package:course_challenge/app/modules/home-page/widgets/first-big-card/main-image/man_image.dart';
import 'package:flutter/material.dart';

class FirstBigCardWidget extends StatelessWidget {
  const FirstBigCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 222,
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
      child: Stack(
        children: [
          const CircleAvatarFirstCard(),
          const ManImageFirstCard(),
          Padding(
            padding: const EdgeInsets.fromLTRB(32, 33, 0, 34),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                MainColumnFirstBigCard(),
                SizedBox(width: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
