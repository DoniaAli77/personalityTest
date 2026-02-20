import 'package:flutter/material.dart'; 
 
class Question extends StatelessWidget { 
//property 
  final String questionText; 
 
//constructor 
  const Question(this.questionText, {super.key}); 
 
//Build method 
  @override 
  Widget build(BuildContext context) { 
    return Container( 
      width: double.infinity, 
      margin: const EdgeInsets.all(10), 
      child: Text( 
        questionText, 
        style: const TextStyle(fontSize: 20, color: Colors.red), 
        textAlign: TextAlign.center, 
      ), 
    ); 
  }} 