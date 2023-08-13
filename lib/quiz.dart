import 'package:flutter/material.dart';
import 'package:avd_basics/screen_container.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ScreenContainer(
          const [Colors.deepOrange, Colors.lightBlue],
        ),
      ),
    );
  }
}
