import 'package:flutter/material.dart';
import './question.dart';
import './mybutton.dart';

class QuizPart extends StatelessWidget {
final Function cbFunction; 
  final int qIndex;
  final List<Map<String, Object>> qList;

  QuizPart(
      {required this.qList, required this.qIndex, required this.cbFunction});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(qList[qIndex]['q'] as String),
      ...(qList[qIndex]['a'] as List<Map<String, Object>>).map((result) {
        return MyButton(
            buttonText: result['cname'] as String,buttonCallback: () => cbFunction(result['score']));
      }).toList()
    ]);
  }
}
