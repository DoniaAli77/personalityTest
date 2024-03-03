import 'package:flutter/material.dart'; 
 
class Question extends StatelessWidget { 
//property 
  final String questionText; 
 
//constructor 
  Question(this.questionText); 
 
//Build method 
  @override 
  Widget build(BuildContext context) { 
    return Container( 
      width: double.infinity, 
      margin: EdgeInsets.all(10), 
      child: Text( 
        questionText, 
        style: TextStyle(fontSize: 20, color: Colors.red), 
        textAlign: TextAlign.center, 
      ), 
    ); 
  }} 