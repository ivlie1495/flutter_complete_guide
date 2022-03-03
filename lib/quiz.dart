import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/answer.dart';
import 'package:flutter_complete_guide/question.dart';

class Quiz extends StatelessWidget {
  final List<Map<dynamic, dynamic>> questions;
  final int questionIndex;
  final Function answerQuestion;
  
  const Quiz({ 
    Key? key, 
    required this.questions,
    required this.questionIndex,
    required this.answerQuestion,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['text'],
        ),
        ...questions[questionIndex]['answers'].map((item) {
          return Answer(() => answerQuestion(item['score'] as int), item['text']);
        }).toList(),
      ],
    );
  }
}