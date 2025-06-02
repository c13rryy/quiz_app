import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  int _listIdx = 0;

  void answerQuestions(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      _listIdx++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestions = questions[_listIdx];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestions.text,
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...currentQuestions.shuffledAnswers.map(
              (el) => AnswerButton(
                text: el,
                pressFn: () {
                  answerQuestions(el);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
