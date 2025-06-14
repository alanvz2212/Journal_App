// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mood.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MoodDataAdapter extends TypeAdapter<MoodData> {
  @override
  final int typeId = 3;

  @override
  MoodData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MoodData(
      (fields[1] as List).cast<String>(),
      (fields[2] as List).cast<double>(),
      fields[4] as int,
      date: fields[0] as DateTime,
      username: fields[3] as User,
    );
  }

  @override
  void write(BinaryWriter writer, MoodData obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.date)
      ..writeByte(1)
      ..write(obj.moods)
      ..writeByte(2)
      ..write(obj.values)
      ..writeByte(3)
      ..write(obj.username)
      ..writeByte(4)
      ..write(obj.moodcount);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MoodDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
