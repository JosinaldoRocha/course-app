import 'package:flutter/material.dart';

class CircleAvatarFirstCard extends StatelessWidget {
  const CircleAvatarFirstCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Positioned(
      left: 208,
      height: 179,
      width: 179,
      top: -22,
      child: CircleAvatar(
        backgroundColor: Color.fromRGBO(23, 42, 135, 1),
      ),
    );
  }
}
