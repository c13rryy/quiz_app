import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(height: 80),
          const Text(
            'Learn Flutter the fun way',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              /*   padding: const EdgeInsets.only(
                top: 12,
                bottom: 12,
                left: 18,
                right: 18,
              ),
              side: const BorderSide(
                width: 1.5,
                color: Color.fromARGB(139, 37, 37, 37),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(2),
              ), */
              textStyle: const TextStyle(fontSize: 16),
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
