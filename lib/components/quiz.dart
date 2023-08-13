import 'package:flutter/material.dart';
import 'package:quiz_app/components/home.dart';
import 'package:quiz_app/components/questions_screen.dart';
import 'package:quiz_app/components/results_screen.dart';
import 'package:quiz_app/data/questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {

  Widget? activeScreen;
  final List<String> selectedAnswers = [];


  @override
  void initState() {
    activeScreen =  Home(switchScreen);
    super.initState();
  }

  void chooseAnswer(String answer){
    selectedAnswers.add(answer);

    if(selectedAnswers.length == questions.length){
      setState(() {
        activeScreen =  ResultsScreen(chosenAnswers: selectedAnswers,);
      });
    }
  }


  void switchScreen(){
    setState(() {
      activeScreen =  QuestionsScreen(chooseAnswer);
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
