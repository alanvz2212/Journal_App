import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:journal_app/controllers/notification_service.dart';
import 'package:journal_app/controllers/notification_task.dart';
import 'package:journal_app/model/diary.dart';
import 'package:journal_app/model/event.dart';
import 'package:journal_app/model/moods.dart';
import 'package:journal_app/model/user.dart';
import 'package:journal_app/screens/splash_screen.dart';
import 'package:workmanager/workmanager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await NotificationService().init();
  Workmanager().initialize(callbackDispatcher, isInDebugMode: false);

  Hive.registerAdapter(UserAdapter());
  Hive.registerAdapter(EventAdapter());
  Hive.registerAdapter(MoodDataAdapter());
  Hive.registerAdapter(DiaryAdapter());

  await Hive.openBox<User>('users');
  await Hive.openBox<Event>('events');
  await Hive.openBox<MoodData>('moods');
  await Hive.openBox<Diary>('journals');

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  late ThemeData _themeData;

  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: SplashScreen());
  }
}
