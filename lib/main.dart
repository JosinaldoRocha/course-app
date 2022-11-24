import 'package:course_challenge/app/modules/tasks-page/model/task_model.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'app/app_widget.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(TaskModelAdapter());
  await Hive.openBox<TaskModel>('tasks');
  runApp(
    const MyApp(),
  );
}
