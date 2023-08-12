import 'package:flutter/material.dart';
import 'package:quiz_app/components/display_logo.dart';
import 'package:quiz_app/components/display_text.dart';

class Home extends StatelessWidget {
  const Home(this.startQuiz,{super.key});

  final void Function() startQuiz;


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const DisplayLogo("assets/images/quiz-logo.png", 300),
          const SizedBox(
            height: 60,
          ),
          const DisplayText("Learn Flutter the Fun Way!"),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text("press me"))
        ],
      ),
    );
  }
}
