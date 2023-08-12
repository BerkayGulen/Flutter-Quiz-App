import 'package:flutter/cupertino.dart';

class DisplayLogo extends StatelessWidget {
  const DisplayLogo(this.imageUrl, this.width, {super.key});

  final double width;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/quiz-logo.png",
      width: width,
      color: const Color.fromARGB(150, 255, 255, 255),
    );
  }
}
