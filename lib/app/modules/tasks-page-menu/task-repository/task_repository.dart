import 'package:course_challenge/app/modules/tasks-page-menu/model/task_model.dart';
import 'package:flutter/material.dart';

List<TaskModel> allTasks = [
  TaskModel(
    question: 'Qual a tradução de "maçã", em espanhol?',
    answerOptions: 'a) Papaya\nb) Limón\nc) Manzana\nd) Sandía\n',
    color: const Color.fromRGBO(45, 81, 189, 1),
    taskFinished: false,
    lessonId: 6,
    taskId: 1,
  ),
  TaskModel(
    question: 'Qual a tradução de: "Uma laranja é mais que dois limões"',
    answerOptions:
        'a) Una sandía es más que dos limones\nb) Una patata es más que dos limones\n'
        'c) Una naranja es más que dos limones\n',
    color: const Color.fromRGBO(45, 81, 189, 1),
    taskFinished: false,
    lessonId: 6,
    taskId: 2,
  ),
  TaskModel(
    question: 'Qual a tradução correta de: "Um, dois, três, quatro, oito"',
    answerOptions: 'a) uno, dos, tres, cuatro\nb) uno, tres, dos, ocho\n'
        'c) uno, dos, tres, ocho\nd) uno, dos, tres, cuatro\n',
    color: const Color.fromRGBO(45, 81, 189, 1),
    taskFinished: false,
    lessonId: 6,
    taskId: 3,
  ),
  TaskModel(
    question: 'Qual a tradução de: "Trabalho duro todos os dias"?',
    answerOptions: 'a) Work sodo ogni giorno\nb) Trabajo sodo ogni giorno\n'
        'c) Lavorare sodo ogni giorno\nd) Lavorare sodo ogni days\n',
    color: const Color.fromRGBO(240, 62, 86, 1),
    taskFinished: false,
    lessonId: 2,
    taskId: 4,
  ),
  TaskModel(
    question: 'Escolha a opção que traduz a frase: "Veneza é uma bela cidade".',
    answerOptions:
        'a) Venezia è una bella città\nb) Venezia è una bellissima città\n'
        'c) Venezia è una bellissima ciudad\nd) Venezia ès una bellissima città\n',
    color: const Color.fromRGBO(47, 199, 92, 1),
    taskFinished: false,
    lessonId: 4,
    taskId: 5,
  ),
  TaskModel(
    question: 'Quais os 3 principais fundamentos do futebol?',
    answerOptions: 'a) Pass, kick, domain\nb) Pass, header, domain\n'
        'c) Pass, kick, drive\nd) Dribble, kick, domain\n',
    color: const Color.fromRGBO(250, 171, 59, 1),
    taskFinished: false,
    lessonId: 1,
    taskId: 6,
  ),
  TaskModel(
    question: 'Paulo tem 3 filhos, Roberta, Ricardo e Eduardo. '
        'Qual opção corresponde ao nome dos filhos de Paulo?',
    answerOptions:
        'a) Richard, Robert and Edward\nb) Robert, Richard and Edward\n'
        'c) Edward, Richard and Robert\nd) Robert, Richart and Edward\n',
    color: const Color.fromRGBO(152, 57, 240, 1),
    taskFinished: false,
    lessonId: 5,
    taskId: 7,
  ),
  TaskModel(
    question: 'Qual a tradução para: "Olá, tudo bem com você?',
    answerOptions: 'a) Hello, Are you okay\nb) Hi, Are you okay\n'
        'c) Hello, How you okay\nd) Hi, How do you okay\n',
    color: const Color.fromRGBO(85, 146, 217, 1),
    taskFinished: false,
    lessonId: 3,
    taskId: 8,
  ),
  TaskModel(
    question:
        'Escolha a opção que corresponde à tradução da frase: "Quantos anos você tem?".',
    answerOptions:
        'a) How old you are?\nb) How do are you\nc) Hi old are you\nd) How old are you?\n',
    color: const Color.fromRGBO(85, 146, 217, 1),
    taskFinished: false,
    lessonId: 3,
    taskId: 9,
  ),
  TaskModel(
    question: 'Uma família possue cinco membros, cada um tem 3 filhos, '
        'quantos membros essa família possui?',
    answerOptions: 'a) Twenty-four\nb) Two\nc) Twenty\nd) Twenty-one\n',
    color: const Color.fromRGBO(152, 57, 240, 1),
    taskFinished: false,
    lessonId: 5,
    taskId: 10,
  ),
  TaskModel(
    question: 'Qual a tradução de "gerente", em italiano?',
    answerOptions: 'a) Amministratore\nb) Capo\n'
        'c) Gestore\nd) Gestione\n',
    color: const Color.fromRGBO(240, 62, 86, 1),
    taskFinished: false,
    lessonId: 2,
    taskId: 11,
  ),
  TaskModel(
    question: 'Qual a tradução para; "Pai e filho são grandes irmãos"?',
    answerOptions:
        'a) Father and son are big brothers\nb) Father and sons are big brothers\n'
        'c) Fathers and sons are big brothers\nd) Father and son são big brothers\n',
    color: const Color.fromRGBO(152, 57, 240, 1),
    taskFinished: false,
    lessonId: 5,
    taskId: 12,
  ),
];

class TaskRepository {
  List<TaskModel> getAll(int taskId) {
    final List<TaskModel> task = List.from(allTasks);
    task.retainWhere((element) => element.lessonId == taskId);
    return task;
  }
}
