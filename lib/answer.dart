import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback function;
  final String answerText;

  const Answer(
    this.function, 
    this.answerText, { 
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
        ),
        onPressed: function, 
        child: Text(answerText),
      ),
    );
  }
}