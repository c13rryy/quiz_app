import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/questions_summary/questions_idx.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        itemData['user_answer'] == itemData['correct_answers'];

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionsIdx(
          questionIdx: (itemData['question_index'] as int),
          isCorrectAnswer: isCorrectAnswer,
        ),
        const SizedBox(width: 15),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemData['question'] as String,
                style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
              const SizedBox(height: 5),
              Text(
                itemData['user_answer'] as String,
                style: GoogleFonts.roboto(
                  color: const Color.fromARGB(255, 199, 193, 193),
                  fontSize: 13,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Text(
                itemData['correct_answers'] as String,
                style: GoogleFonts.roboto(
                  color: const Color.fromARGB(255, 82, 230, 87),
                  fontSize: 13,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
