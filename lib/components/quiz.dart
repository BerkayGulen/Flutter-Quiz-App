import 'package:flutter/material.dart';
import 'package:quiz_app/components/home.dart';
import 'package:quiz_app/components/questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {

  Widget? activeScreen;

  @override
  void initState() {
    activeScreen =  Home(switchScreen);
    super.initState();
  }
  void switchScreen(){
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: Scaffold(
        body:Container(
          decoration: const BoxDecoration(
            color: Colors.deepPurpleAccent,
          ),
          child:  activeScreen,
        ),
      ),
    );
  }
}
