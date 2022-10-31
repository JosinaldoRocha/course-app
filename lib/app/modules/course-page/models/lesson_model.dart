import 'package:course_challenge/app/modules/tasks-page-menu/model/task_model.dart';
import 'package:course_challenge/app/modules/tasks-page-menu/task-repository/task_repository.dart';
import 'package:flutter/animation.dart';

class LessonModel {
  late Color color;
  late int lessonID;
  late String lessonTitle;
  late String assetImage;

  LessonModel({
    required this.color,
    required this.lessonID,
    required this.assetImage,
    required this.lessonTitle,
  });

  double get percentage => allTasksCompletedAmount() / tasksAmount();
  String get progressTasks => '${allTasksCompletedAmount()} / ${tasksAmount()}';

  int tasksAmount() {
    final List<TaskModel> task = List.from(allTasks);
    task.retainWhere((element) => element.lessonId == lessonID);
    return task.length;
  }

  int allTasksCompletedAmount() {
    final List<TaskModel> task = List.from(allTasks);
    task.retainWhere(
        (element) => element.lessonId == lessonID && element.taskFinished);
    return task.length;
  }
}
