// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dairy.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DairyAdapter extends TypeAdapter<Dairy> {
  @override
  final int typeId = 4;

  @override
  Dairy read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Dairy(
      date: fields[0] as String,
      content: fields[1] as String?,
      username: fields[2] as User,
      imagePaths: (fields[3] as List).cast<String>(),
      audioPaths: (fields[4] as List).cast<String>(),
      title: fields[5] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Dairy obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.date)
      ..writeByte(1)
      ..write(obj.content)
      ..writeByte(2)
      ..write(obj.username)
      ..writeByte(3)
      ..write(obj.imagePaths)
      ..writeByte(4)
      ..write(obj.audioPaths)
      ..writeByte(5)
      ..write(obj.title);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DairyAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
