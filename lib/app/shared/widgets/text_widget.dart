import 'package:flutter/cupertino.dart';

class TextWidget extends StatelessWidget {
  const TextWidget(
      {super.key,
      required this.text,
      required this.size,
      required this.color,
      required this.weight,
      required this.align});

  final String text;
  final double size;
  final Color color;
  final FontWeight weight;
  final TextAlign align;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      style: TextStyle(
        fontSize: size,
        color: color,
        fontFamily: 'Roboto',
        fontWeight: weight,
        fontStyle: FontStyle.normal,
      ),
    );
  }
}
