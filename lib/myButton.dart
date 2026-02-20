import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback buttonCallback;

  const MyButton({super.key, required this.buttonText, required this.buttonCallback});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: buttonCallback,
        style: ButtonStyle(
            backgroundColor: 
            WidgetStateProperty
            .all(Colors.blue)
            ),
        child: Text(buttonText),
      ),
    );
  }
}
