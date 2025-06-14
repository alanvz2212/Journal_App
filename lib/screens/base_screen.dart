import 'package:flutter/material.dart';
import 'package:journal_app/model/user.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key, required User user});

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}