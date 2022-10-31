import 'package:flutter/material.dart';

class DropDownHomeWidget extends StatefulWidget {
  const DropDownHomeWidget({super.key});

  @override
  State<DropDownHomeWidget> createState() => _DropDownHomeWidgetState();
}

class _DropDownHomeWidgetState extends State<DropDownHomeWidget> {
  String dropdownValue = 'English';
  List<String> idiomas = ['English', 'Italian', 'Spanish'];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 20,
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
          items: idiomas.map<DropdownMenuItem<String>>(
            (String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
