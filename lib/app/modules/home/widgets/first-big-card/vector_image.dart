import 'package:flutter/material.dart';

class VectorImageFirstCard extends StatelessWidget {
  const VectorImageFirstCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 100,
      top: -77,
      child: Image.asset(
        'assets/images/vector.png',
        height: 225,
      ),
    );
  }
}
