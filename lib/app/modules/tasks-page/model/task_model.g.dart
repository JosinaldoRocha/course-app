// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TaskModelAdapter extends TypeAdapter<TaskModel> {
  @override
  final int typeId = 0;

  @override
  TaskModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TaskModel(
      question: fields[0] as String,
      answerOptions: fields[1] as String,
      taskFinished: fields[3] as bool,
      taskId: fields[4] as int,
      lessonId: fields[5] as int,
      firstCorrectAnswer: fields[6] as String,
      secondCorrectAnswer: fields[7] as String,
    )..positiveAnswer = fields[8] as bool;
  }

  @override
  void write(BinaryWriter writer, TaskModel obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.question)
      ..writeByte(1)
      ..write(obj.answerOptions)
      ..writeByte(3)
      ..write(obj.taskFinished)
      ..writeByte(4)
      ..write(obj.taskId)
      ..writeByte(5)
      ..write(obj.lessonId)
      ..writeByte(6)
      ..write(obj.firstCorrectAnswer)
      ..writeByte(7)
      ..write(obj.secondCorrectAnswer)
      ..writeByte(8)
      ..write(obj.positiveAnswer);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TaskModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
