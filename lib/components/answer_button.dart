import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.text, this.tapButton, {super.key});

  final String text;
  final void Function() tapButton;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: tapButton,
      style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 32, 13, 83),
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10)),
      child: Text(
        text,
        textAlign: TextAlign.center,
      ),
    );
  }
}
