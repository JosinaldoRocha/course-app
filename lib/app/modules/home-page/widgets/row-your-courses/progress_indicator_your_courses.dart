import 'package:course_challenge/app/modules/home-page/models/your_courses_model.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class ProgressIndicatorYourCourses extends StatelessWidget {
  const ProgressIndicatorYourCourses({
    super.key,
    required this.course,
  });
  final YoursCoursesModel course;

  @override
  Widget build(BuildContext context) {
    double progressValue = 80;
    return SizedBox(
      width: 30,
      height: 30,
      child: SfRadialGauge(
        axes: [
          RadialAxis(
            maximumLabels: 0,
            labelOffset: 7,
            labelFormat: '80%',
            axisLabelStyle: const GaugeTextStyle(
                fontSize: 9,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w700,
                color: Color.fromRGBO(52, 52, 52, 1)),
            minimum: 0,
            maximum: 100,
            showLabels: false,
            showTicks: false,
            startAngle: 270,
            endAngle: 270,
            axisLineStyle: const AxisLineStyle(
              thickness: 1,
              color: Color.fromRGBO(255, 255, 255, 1),
              thicknessUnit: GaugeSizeUnit.factor,
            ),
            pointers: <GaugePointer>[
              RangePointer(
                color: course.color,
                value: progressValue,
                width: 1,
                pointerOffset: 0.00,
                sizeUnit: GaugeSizeUnit.factor,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
