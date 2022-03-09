import 'package:f_template_conversor_decimal_binario_2022/ui/widgets/digit_button.dart';
import 'package:flutter/material.dart';

class BinaryKeyboard extends StatelessWidget {
  final Function(String) _onPressed;

  BinaryKeyboard(this._onPressed);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          child: Container(
            padding: EdgeInsets.all(5),
            child: DigitButton(
              onPressed: _onPressed,
              digit: "1",
            ),
          ),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.all(5),
            child: DigitButton(
              digit: "0",
              onPressed: _onPressed,
            ),
          ),
        ),
      ],
    );
  }
}
