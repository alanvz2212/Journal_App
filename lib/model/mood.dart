import 'package:hive_flutter/adapters.dart';
import 'package:journal_app/model/user.dart';

part 'mood.g.dart';

@HiveType(typeId: 3)
class MoodData extends HiveObject {
  @HiveField(0)
  final DateTime date;

  @HiveField(1)
  final List<String> moods;

  @HiveField(2)
  final List<double> values;

  @HiveField(3)
  User username;

  @HiveField(4)
  final int moodcount;

  MoodData(
    this.moods,
    this.values,
    this.moodcount, {
    required this.date,
    required this.username,
  });
}
