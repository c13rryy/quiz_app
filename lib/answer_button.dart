import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({super.key, required this.text, required this.pressFn});

  final String text;
  final void Function() pressFn;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: pressFn,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 55, 1, 105),
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      ),
      child: Text(text),
    );
  }
}
