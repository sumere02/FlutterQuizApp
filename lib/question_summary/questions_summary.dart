import 'package:avd_basics/question_summary/question_item.dart';
import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summary, {super.key});
  final List<Map<String, Object>> summary;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: summary.map(
            (data) {
              return QuestionItem(data: data);
            },
          ).toList(),
        ),
      ),
    );
  }
}
