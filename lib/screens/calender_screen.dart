import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:journal_app/model/event.dart';
import 'package:journal_app/model/user.dart';

class CalenderScreen extends StatefulWidget {
  const CalenderScreen({super.key});

  @override
  State<CalenderScreen> createState() => _CalenderScreenState();
}

class _CalenderScreenState extends State<CalenderScreen> {
  int eventcount = 0;
  var loggedInUser;

  DateTime _selectedDate = DateTime.now();
  DateTime _focusedDay = DateTime.now();

  late Box<User> userBox;
  late Box<Event> eventBox;
  String userName = 'Loading...';

  late ValueListenable<Box<User>> eventListenable;
  List<Event> events = [];

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
