import 'package:flutter/cupertino.dart';

class ManImageFirstCard extends StatelessWidget {
  const ManImageFirstCard({super.key});

  final String url =
      'https://media.discordapp.net/attachments/1013163047558316093/1032003467620925460/image.png';

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 213,
      top: 12,
      child: Image.network(
        url,
        height: 225,
      ),
    );
  }
}
