import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  // await NotificationService().init();
  // Workmanager().initialize(callbackDispatcher, isInDebugMode: false);

  final prefs = await SharedPreferences.getInstance();
  final isDarkMode = prefs.getBool('isDarkMode') ?? false;
  final initialThemeData = isDarkMode ? ThemeData.dark() : ThemeData.light();

  runApp(MyApp(initialThemeData: initialThemeData));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key, required ThemeData initialThemeData});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Journal App',
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}
