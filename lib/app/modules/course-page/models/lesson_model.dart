import 'package:course_challenge/app/modules/tasks-page-menu/model/task_model.dart';
import 'package:course_challenge/app/modules/tasks-page-menu/task-repository/task_repository.dart';
import 'package:flutter/animation.dart';

class LessonModel {
  late Color color;
  late int courseId;
  late String lessonTitle;
  late String assetImage;
  late int lessonId;

  LessonModel({
    required this.color,
    required this.courseId,
    required this.assetImage,
    required this.lessonTitle,
    required this.lessonId,
  });

  double get percentage => numberOfTasksCompleted() / tasksAmount();
  String get progressTasks => '${numberOfTasksCompleted()} / ${tasksAmount()}';

  int tasksAmount() {
    final List<TaskModel> task = List.from(allTasks);
    task.retainWhere((element) => element.lessonId == lessonId);
    return task.length;
  }

  int numberOfTasksCompleted() {
    final List<TaskModel> task = List.from(allTasks);
    task.retainWhere(
        (element) => element.lessonId == lessonId && element.taskFinished);
    return task.length;
  }
}
