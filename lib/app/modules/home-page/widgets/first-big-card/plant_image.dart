import 'package:flutter/material.dart';

class PlantImageFirstCard extends StatelessWidget {
  const PlantImageFirstCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 225,
      top: 145,
      child: Image.asset(
        'assets/images/planta.png',
        width: 49.99,
        height: 77.7,
      ),
    );
  }
}
