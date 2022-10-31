import 'package:course_challenge/app/modules/tasks-page-menu/model/task_model.dart';
import 'package:flutter/material.dart';

List<TaskModel> allTasks = [
  TaskModel(
    taskTitle: 'Qual a tradução de maçã, em espanhol?',
    opciones: 'a) Papaya\nb) Limón\nc) Manzana\nd) Sandía\n',
    lessonTitle: 'Alimentos',
    color: const Color.fromRGBO(45, 81, 189, 1),
    taskFinished: false,
    completedTasks: 0,
    lessonId: 6,
    taskId: 1,
  ),
  TaskModel(
    taskTitle: 'Qual a tradução de: "Uma laranja é mais que dois limões"',
    opciones:
        'a) Una sandía es más que dos limones\nb) Una patata es más que dos limones\nc) Una naranja es más que dos limones\n',
    lessonTitle: 'Alimentos',
    color: const Color.fromRGBO(45, 81, 189, 1),
    taskFinished: false,
    completedTasks: 0,
    lessonId: 6,
    taskId: 2,
  ),
  TaskModel(
    taskTitle: 'Escreva seu nome',
    opciones: 'a) Abóbora\nb) Uva\nc) Maçã\nd)Mamão\n',
    lessonTitle: 'Alimentos',
    color: const Color.fromRGBO(45, 81, 189, 1),
    taskFinished: false,
    completedTasks: 0,
    lessonId: 6,
    taskId: 3,
  ),
  TaskModel(
    taskTitle: 'Escreva seu nome',
    opciones: 'a) Abóbora\nb) Uva\nc) Maçã\nd)Mamão\n',
    lessonTitle: 'Occupazioni',
    color: const Color.fromRGBO(45, 81, 189, 1),
    taskFinished: false,
    completedTasks: 0,
    lessonId: 2,
    taskId: 4,
  ),
  TaskModel(
    taskTitle: 'Quantos anos vc tem?',
    opciones: 'a) Abóbora\nb) Uva\nc) Maçã\nd)Mamão\n',
    lessonTitle: 'Posti',
    color: const Color.fromRGBO(45, 81, 189, 1),
    taskFinished: false,
    completedTasks: 0,
    lessonId: 4,
    taskId: 5,
  ),
  TaskModel(
    taskTitle: 'Escreva seu nome',
    opciones: 'a) Abóbora\nb) Uva\nc) Maçã\nd)Mamão\n',
    lessonTitle: 'Basics',
    color: const Color.fromRGBO(45, 81, 189, 1),
    taskFinished: false,
    completedTasks: 0,
    lessonId: 1,
    taskId: 6,
  ),
  TaskModel(
    taskTitle: 'Escreva seu nome',
    opciones: 'a) Abóbora\nb) Uva\nc) Maçã\nd)Mamão\n',
    lessonTitle: 'Basics',
    color: const Color.fromRGBO(45, 81, 189, 1),
    taskFinished: false,
    completedTasks: 0,
    lessonId: 1,
    taskId: 7,
  ),
  TaskModel(
    taskTitle: 'Escreva seu nome',
    opciones: 'a) Abóbora\nb) Uva\nc) Maçã\nd)Mamão\n',
    lessonTitle: 'Conversation',
    color: const Color.fromRGBO(45, 81, 189, 1),
    taskFinished: false,
    completedTasks: 0,
    lessonId: 3,
    taskId: 8,
  ),
  TaskModel(
    taskTitle: 'Quantos anos vc tem?',
    opciones: 'a) Abóbora\nb) Uva\nc) Maçã\nd)Mamão\n',
    lessonTitle: 'Family members',
    color: const Color.fromRGBO(45, 81, 189, 1),
    taskFinished: false,
    completedTasks: 0,
    lessonId: 5,
    taskId: 9,
  ),
  TaskModel(
    taskTitle: 'Escreva seu nome',
    opciones: 'a) Abóbora\nb) Uva\nc) Maçã\nd)Mamão\n',
    lessonTitle: 'Family members',
    color: const Color.fromRGBO(45, 81, 189, 1),
    taskFinished: false,
    completedTasks: 0,
    lessonId: 5,
    taskId: 10,
  ),
];

class TaskRepository {
  List<TaskModel> getAll(int taskId) {
    final List<TaskModel> task = List.from(allTasks);
    task.retainWhere((element) => element.taskId == taskId);
    return task;
  }
}
