import 'package:flutter/material.dart';
import 'package:quiz_app/home_screen.dart';
import 'package:quiz_app/question_screen.dart';

/**
 * class _QuizState extends State<Quiz>
 * this is says that the class _QuizState is connected to the class Quiz
 * and the class Quiz is a StatefulWidget
 * 
 * State<Quiz> createState() {
    return _QuizState();
  }
  * this is the method that creates the instance of the class _QuizState that is connected to the class Quiz
 * 
 */

class Quiz extends StatefulWidget {
  Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  // Widget? activeScreen;

  // @override
  // void initState() {
  //   super.initState();
  //   activeScreen = Homescreen(switchScreen);
  // }

  var activeScreen = 'home-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = Homescreen(switchScreen);
    if (activeScreen == 'question-screen') {
      screenWidget = const QuestionScreen();
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.lightBlueAccent,
                const Color.fromARGB(255, 28, 3, 71),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
