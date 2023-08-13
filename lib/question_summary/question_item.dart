import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:avd_basics/question_summary/question_identifier.dart';

class QuestionItem extends StatelessWidget {
  const QuestionItem({required this.data, super.key});
  final Map<String, Object> data;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIdentifier(
          isCorrectAnswer: data["given_answer"] == data["correct_answer"],
          questionIndex: data["question_index"] as int,
        ),
        const SizedBox(
          width: 30,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                data["question"] as String,
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                data["given_answer"] as String,
                style: GoogleFonts.lato(
                  color: data["given_answer"] == data["correct_answer"]
                      ? const Color.fromARGB(255, 3, 204, 10)
                      : const Color.fromARGB(255, 184, 0, 0),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                data["correct_answer"] as String,
                style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 3, 204, 10),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),
            ],
          ),
        )
      ],
    );
  }
}

