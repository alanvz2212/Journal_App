import 'package:hive_flutter/adapters.dart';
import 'package:journal_app/model/user.dart';

part 'dairy.g.dart';

@HiveType(typeId: 4)
class Dairy extends HiveObject {
  @HiveField(0)
  final String date;

  @HiveField(1)
  String? content;

  @HiveField(2)
  User username;

  @HiveField(3)
  final List<String> imagePaths;

  @HiveField(4)
  final List<String> audioPaths;

  @HiveField(5)
  String? title;

  Dairy({
    required this.date,
    this.content,
    required this.username,
    this.imagePaths = const [],
    this.audioPaths = const [],
    this.title,
  });
}
