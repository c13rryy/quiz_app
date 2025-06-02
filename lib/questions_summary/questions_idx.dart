import 'package:flutter/material.dart';

class QuestionsIdx extends StatelessWidget {
  const QuestionsIdx({
    super.key,
    required this.questionIdx,
    required this.isCorrectAnswer,
  });

  final int questionIdx;
  final bool isCorrectAnswer;

  //вопрос по обертке в контейнер
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrectAnswer
            ? const Color.fromARGB(255, 82, 230, 87)
            : const Color.fromARGB(255, 253, 46, 31),
            borderRadius:  BorderRadius.circular(100),
      ),
      child: Text(
        (questionIdx + 1).toString(),
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
