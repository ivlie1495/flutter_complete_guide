import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetQuiz;

  const Result({ 
    Key? key,
    required this.resultScore,
    required this.resetQuiz,
  }) : super(key: key);

  String get resultPhrase {
    String resultText = '';

    if (resultScore < 22) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore < 25) {
      resultText = 'Pretty likeable!';
    } else if (resultScore < 28) {
      resultText = 'You are strange!';
    } else {
      resultText = 'You did it!';
    }
    
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            style: const TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextButton(
            onPressed: resetQuiz, 
            child: const Text('Restart Quiz!'),
          ),
        ],
      ),
    );
  }
}