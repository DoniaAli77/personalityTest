import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback buttonCallback;

  MyButton({required this.buttonText, required this.buttonCallback});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: buttonCallback,
        child: Text(buttonText),
        style: ButtonStyle(
            backgroundColor: 
            MaterialStateProperty
            .all(Colors.blue)
            ),
      ),
    );
  }
}
