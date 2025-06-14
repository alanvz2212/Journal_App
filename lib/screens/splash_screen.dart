import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:journal_app/model/user.dart';
import 'package:journal_app/screens/base_screen.dart';
import 'package:journal_app/screens/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  Future<void> checkLoginAndNavigate() async {
    await Future.delayed(const Duration(seconds: 1));
    final shr = await SharedPreferences.getInstance();
    final userLoggedIn = shr.getBool('login');

    if (userLoggedIn == true) {
      var userBox = Hive.box<User>('users');
      var loggedInUser = userBox.get('loggedInUser');

      if (loggedInUser != null) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (ctx) => BaseScreen(user: loggedInUser)),
        );
      } else {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (ctx) {
              return const LoginPage();
            },
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
