import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:journal_app/model/event.dart';
import 'package:journal_app/model/user.dart';
import 'package:journal_app/screens/calender_screen.dart';
import 'package:journal_app/screens/journal.dart';
import 'package:journal_app/screens/my_moods.dart';
import 'package:journal_app/screens/splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  // await NotificationService().init();
  // Workmanager().initialize(callbackDispatcher, isInDebugMode: false);

  Hive.registerAdapter(UserAdapter());
  Hive.registerAdapter(EventAdapter());

  final prefs = await SharedPreferences.getInstance();
  final isDarkMode = prefs.getBool('isDarkMode') ?? false;
  final initialThemeData = isDarkMode ? ThemeData.dark() : ThemeData.light();

  runApp(MyApp(initialThemeData: initialThemeData));
}

class MyApp extends StatefulWidget {
  final ThemeData initialThemeData;
  const MyApp({super.key, required this.initialThemeData});

  // static MyAppState? of(BuildContext context) {
  //   return context.findAncestorStateOfType<MyAppState>();
  // }

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late ThemeData _themeData;

  @override
  void initState() {
    super.initState();
    _themeData = widget.initialThemeData;
  }

  void setThemeData(ThemeData themeData) async {
    setState(() {
      _themeData = themeData;
    });

    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isDarkMode', themeData.brightness == Brightness.dark);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Journal App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: SplashScreen(),
      routes: {
        '/calendar': (context) => CalenderScreen(),
        '/moods': (context) => MyMoods(),
        '/journal': (context) => Journal(),
      },
    );
  }
}
