import 'package:course_challenge/app/modules/home-page/widgets/drop_down_button_widget.dart';
import 'package:flutter/material.dart';

class RowTopScreenWidget extends StatelessWidget {
  const RowTopScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () => Scaffold.of(context).openDrawer(),
          child: Image.asset(
            'assets/images/menu.png',
            width: 29,
            height: 33,
          ),
        ),
        const Expanded(
          child: SizedBox(),
        ),
        Image.asset(
          'assets/images/map.png',
          height: 19,
          width: 28,
        ),
        const SizedBox(width: 7),
        const DropDownHomeWidget(),
        const SizedBox(width: 38.39),
      ],
    );
  }
}
