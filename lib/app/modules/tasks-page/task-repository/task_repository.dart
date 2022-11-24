import 'package:course_challenge/app/modules/tasks-page/model/task_model.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

List<TaskModel> _allTasks = [
  TaskModel(
    question: 'Qual a tradução de "maçã", em espanhol?',
    answerOptions: 'a) Papaya\nb) Limón\nc) Manzana\nd) Sandía\n',
    firstCorrectAnswer: 'c',
    secondCorrectAnswer: 'C',
    color: const Color.fromRGBO(45, 81, 189, 1),
    taskFinished: false,
    lessonId: 6,
    taskId: 1,
    taskController: TextEditingController(),
  ),
  TaskModel(
    question: 'Qual a tradução de: "Uma laranja é mais que dois limões"',
    answerOptions:
        'a) Una sandía es más que dos limones\nb) Una patata es más que dos limones\n'
        'c) Una naranja es más que dos limones\n',
    firstCorrectAnswer: 'c',
    secondCorrectAnswer: 'C',
    color: const Color.fromRGBO(45, 81, 189, 1),
    taskFinished: false,
    lessonId: 6,
    taskId: 2,
    taskController: TextEditingController(),
  ),
  TaskModel(
    question: 'Qual a tradução correta de: "Um, dois, três, oito"',
    answerOptions: 'a) uno, dos, tres, cuatro\nb) uno, tres, dos, ocho\n'
        'c) uno, dos, tres, ocho\nd) uno, dos, tres, cuatro\n',
    firstCorrectAnswer: 'b',
    secondCorrectAnswer: 'B',
    color: const Color.fromRGBO(45, 81, 189, 1),
    taskFinished: false,
    lessonId: 6,
    taskId: 3,
    taskController: TextEditingController(),
  ),
  TaskModel(
    question: 'Qual a tradução de: "Trabalho duro todos os dias"?',
    answerOptions: 'a) Work sodo ogni giorno\nb) Trabajo sodo ogni giorno\n'
        'c) Lavorare sodo ogni giorno\nd) Lavorare sodo ogni days\n',
    firstCorrectAnswer: 'c',
    secondCorrectAnswer: 'C',
    color: const Color.fromRGBO(240, 62, 86, 1),
    taskFinished: false,
    lessonId: 2,
    taskId: 4,
    taskController: TextEditingController(),
  ),
  TaskModel(
    question: 'Escolha a opção que traduz a frase: "Veneza é uma bela cidade".',
    answerOptions:
        'a) Venezia è una bella città\nb) Venezia è una bellissima città\n'
        'c) Venezia è una bellissima ciudad\nd) Venezia ès una bellissima città\n',
    firstCorrectAnswer: 'b',
    secondCorrectAnswer: 'B',
    color: const Color.fromRGBO(47, 199, 92, 1),
    taskFinished: false,
    lessonId: 4,
    taskId: 5,
    taskController: TextEditingController(),
  ),
  TaskModel(
    question: 'Quais os 3 principais fundamentos do futebol?',
    answerOptions: 'a) Pass, kick, domain\nb) Pass, header, domain\n'
        'c) Pass, kick, drive\nd) Dribble, kick, domain\n',
    firstCorrectAnswer: 'a',
    secondCorrectAnswer: 'A',
    color: const Color.fromRGBO(250, 171, 59, 1),
    taskFinished: false,
    lessonId: 1,
    taskId: 6,
    taskController: TextEditingController(),
  ),
  TaskModel(
    question: 'Paulo tem 3 filhos, Roberta, Ricardo e Eduardo. '
        'Qual opção corresponde ao nome dos filhos de Paulo?',
    answerOptions:
        'a) Richard, Robert and Edward\nb) Robert, Richard and Edward\n'
        'c) Edward, Richard and Robert\nd) Robert, Richart and Edward\n',
    firstCorrectAnswer: 'c',
    secondCorrectAnswer: 'C',
    color: const Color.fromRGBO(152, 57, 240, 1),
    taskFinished: false,
    lessonId: 5,
    taskId: 7,
    taskController: TextEditingController(),
  ),
  TaskModel(
    question: 'Qual a tradução para: "Olá, tudo bem com você?',
    answerOptions: 'a) Hi, How do you okay\nb) Hi, Are you okay\n'
        'c) Hello, How you okay\nd) Hello, Are you okay\n',
    firstCorrectAnswer: 'd',
    secondCorrectAnswer: 'D',
    color: const Color.fromRGBO(85, 146, 217, 1),
    taskFinished: false,
    lessonId: 3,
    taskId: 8,
    taskController: TextEditingController(),
  ),
  TaskModel(
    question:
        'Escolha a opção que corresponde à tradução da frase: "Quantos anos você tem?".',
    answerOptions:
        'a) Hi old are you\nb) How do are you\nc) How old you are?\nd) How old are your?\n',
    firstCorrectAnswer: 'c',
    secondCorrectAnswer: 'C',
    color: const Color.fromRGBO(85, 146, 217, 1),
    taskFinished: false,
    lessonId: 3,
    taskId: 9,
    taskController: TextEditingController(),
  ),
  TaskModel(
    question: 'Uma família possue cinco membros, cada um tem 3 filhos, '
        'quantos membros essa família possui?',
    answerOptions: 'a) Twenty-four\nb) Two\nc) Twenty\nd) Twenty-one\n',
    firstCorrectAnswer: 'c',
    secondCorrectAnswer: 'C',
    color: const Color.fromRGBO(152, 57, 240, 1),
    taskFinished: false,
    lessonId: 5,
    taskId: 10,
    taskController: TextEditingController(),
  ),
  TaskModel(
    question: 'Qual a tradução de "gerente", em italiano?',
    answerOptions: 'a) Amministratore\nb) Capo\n'
        'c) Gestione\nd) Gestore\n',
    firstCorrectAnswer: 'd',
    secondCorrectAnswer: 'D',
    color: const Color.fromRGBO(240, 62, 86, 1),
    taskFinished: false,
    lessonId: 2,
    taskId: 11,
    taskController: TextEditingController(),
  ),
  TaskModel(
    question: 'Qual a tradução para; "Pai e filho são grandes irmãos"?',
    answerOptions:
        'a) Father and son are big brothers\nb) Father and sons are big brothers\n'
        'c) Fathers and sons are big brothers\nd) Father and son são big brothers\n',
    firstCorrectAnswer: 'a',
    secondCorrectAnswer: 'A',
    color: const Color.fromRGBO(152, 57, 240, 1),
    taskFinished: false,
    lessonId: 5,
    taskId: 12,
    taskController: TextEditingController(),
  ),
];

class TaskRepository {
  static Future<void> add(TaskModel task) async {
    final box = Hive.box<TaskModel>('tasks');
    await box.add(task);
  }

  void saveAllTasks() {
    final box = Hive.box<TaskModel>('tasks');
    final values = box.values.toList();
    if (values.isEmpty) {
      for (var task in _allTasks) {
        box.put(task.taskId, task);
      }
    }
  }

  List<TaskModel> getAll(int lessonId) {
    final box = Hive.box<TaskModel>('tasks');
    final values = box.values.toList();
    final List<TaskModel> task = List.from(values);
    task.retainWhere((element) => element.lessonId == lessonId);
    return task;
  }

  static Future<void> changeStateTask(int position, TaskModel task) async {
    final box = Hive.box<TaskModel>('tasks');
    await box.put(position, task);
  }
}
