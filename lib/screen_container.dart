import 'package:avd_basics/data/questions.dart';
import 'package:avd_basics/questions_screen.dart';
import 'package:avd_basics/results_screen.dart';
import 'package:flutter/material.dart';
import 'package:avd_basics/home_screen.dart';

List<Color> containerColors = [Colors.green, Colors.blue];

class ScreenContainer extends StatefulWidget {
  ScreenContainer(givenContainerColors, {super.key}) {
    containerColors = givenContainerColors;
  }

  @override
  State<StatefulWidget> createState() {
    return _ScreenContainer();
  }
}

class _ScreenContainer extends State<ScreenContainer> {
  void swithScreen() {
    setState(() {
      selectedAnswers.clear();
      activeScreen = "questions_screen";
    });
  }

  void saveAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = "results_screen";
      });
    }
  }

  String activeScreen = "start_screen";
  final List<String> selectedAnswers = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: containerColors,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: activeScreen == "start_screen"
          ? HomeScreen(swithScreen)
          : activeScreen == "questions_screen"
              ? QuestionsScreen(saveAnswer)
              : ResultScreen(selectedAnswers,swithScreen),
    );
  }
}
