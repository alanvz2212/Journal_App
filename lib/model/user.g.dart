// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserAdapter extends TypeAdapter<User> {
  @override
  final int typeId = 1;

  @override
  User read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return User(
      fullname: fields[0] as String,
      username: fields[1] as String,
      password: fields[2] as String,
      confirm: fields[3] as String,
      email: fields[4] as String,
      contact: fields[5] as String,
      img: fields[6] as Uint8List,
      entrycount: fields[7] as int?,
      lastUpdateDate: fields[8] as DateTime?,
      currentStreak: fields[9] as int,
    );
  }

  @override
  void write(BinaryWriter writer, User obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.fullname)
      ..writeByte(1)
      ..write(obj.username)
      ..writeByte(2)
      ..write(obj.password)
      ..writeByte(3)
      ..write(obj.confirm)
      ..writeByte(4)
      ..write(obj.email)
      ..writeByte(5)
      ..write(obj.contact)
      ..writeByte(6)
      ..write(obj.img)
      ..writeByte(7)
      ..write(obj.entrycount)
      ..writeByte(8)
      ..write(obj.lastUpdateDate)
      ..writeByte(9)
      ..write(obj.currentStreak);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
