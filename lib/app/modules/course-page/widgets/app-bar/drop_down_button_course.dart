import 'package:flutter/material.dart';

class DropDownCoursePageWidget extends StatefulWidget {
  const DropDownCoursePageWidget({super.key});

  @override
  State<DropDownCoursePageWidget> createState() =>
      _DropDownCoursePageWidgetState();
}

class _DropDownCoursePageWidgetState extends State<DropDownCoursePageWidget> {
  String dropdownValue = 'Begginer';
  List<String> level = ['Begginer', 'level 2', 'level 3'];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 115,
        height: 33,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(255, 255, 255, 1),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Center(
          child: DropdownButton<String>(
            underline: const SizedBox(),
            value: dropdownValue,
            icon: const Icon(
              Icons.keyboard_arrow_down_rounded,
              color: Color.fromRGBO(23, 42, 135, 1),
            ),
            style: const TextStyle(
              color: Color.fromRGBO(23, 42, 135, 1),
              fontSize: 14,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.normal,
            ),
            onChanged: (String? value) {
              setState(
                () {
                  dropdownValue = value!;
                },
              );
            },
            items: level.map<DropdownMenuItem<String>>(
              (String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              },
            ).toList(),
          ),
        ),
      ),
    );
  }
}
