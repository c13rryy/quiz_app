import 'package:flutter/material.dart';

/* class ContentColumn extends StatefulWidget {
  const ContentColumn({super.key});

  @override
  State<ContentColumn> createState() {
    return _ContentColumn();
  }
}

class _ContentColumn extends State<ContentColumn> {
  int _value = 0;

  void pressButton() {
    setState(() {
      _value += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/quiz-logo.png', width: 300),
        const SizedBox(height: 80),
        const Text(
          'Learn Flutter the fun way',
          style: TextStyle(color: Colors.white, fontSize: 23),
        ),
        const SizedBox(height: 30),
        OutlinedButton(
          onPressed: pressButton,
          style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.only(
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
            ),
            textStyle: const TextStyle(fontSize: 16),
            foregroundColor: Colors.white,
          ),
          child: Text('Start Quiz $_value'),
        ),
      ],
    );
  }
} */

class ContentColumn extends StatelessWidget {
  const ContentColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/quiz-logo.png', width: 300),
        const SizedBox(height: 80),
        const Text(
          'Learn Flutter the fun way',
          style: TextStyle(color: Colors.white, fontSize: 23),
        ),
        const SizedBox(height: 30),
        OutlinedButton(
          onPressed: () => {},
          style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.only(
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
            ),
            textStyle: const TextStyle(fontSize: 16),
            foregroundColor: Colors.white,
          ),
          child: const Text('Start Quiz'),
        ),
      ],
    );
  }
}
