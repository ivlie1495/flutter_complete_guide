import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/quiz.dart';
import 'package:flutter_complete_guide/result.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int questionIndex = 0;
  int totalScore = 0;

  final List<Map<dynamic, dynamic>> questions = [
    { 
      'text': 'What\'s your favorite color?', 
      'answers': [ 
        { 'text': 'black', 'score': 10 },
        { 'text': 'red', 'score': 9 },
        { 'text': 'gree', 'score': 8 },
        { 'text': 'blue', 'score': 7 }
      ],
    },
    { 
      'text': 'What\'s your favorite animal?', 
      'answers': [ 
        { 'text': 'cat', 'score': 7 },
        { 'text': 'dog', 'score': 9 },
        { 'text': 'turtle', 'score': 8 },
        { 'text': 'bird', 'score': 10 },
      ], 
    },
    { 
      'text': 'Who\'s your favorite instructor?', 
      'answers': [ 
        { 'text': 'Ivan', 'score': 10 },
        { 'text': 'Ivan', 'score': 9 },
        { 'text': 'Ivan', 'score': 8 },
        { 'text': 'Ivan', 'score': 7 }, 
      ], 
    },
  ];

  void answerQuestion(int score) {
    setState(() {
      questionIndex = questionIndex + 1;
      totalScore += score;
    });
  }

  void resetQuiz() {
    setState(() {
      questionIndex = 0;
      totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: questionIndex < questions.length ? Quiz(
          questions: questions, 
          questionIndex: questionIndex, 
          answerQuestion: answerQuestion,
        ) : Result(
          resultScore: totalScore,
          resetQuiz: resetQuiz,
        ),
      ),
    );
  }
}