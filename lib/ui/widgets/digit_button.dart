import 'package:flutter/material.dart';

class DigitButton extends StatelessWidget {
  final String digit;
  final Function onPressed;

  DigitButton({required this.digit,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      key: Key(digit),
      onPressed: () {
        onPressed(digit);
      },
      child: Text(
        digit,
        style: TextStyle(
          fontSize: 25,
        ),
      ),
    );
  }
}
