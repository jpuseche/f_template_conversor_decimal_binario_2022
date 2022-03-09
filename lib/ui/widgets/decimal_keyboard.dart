import 'package:f_template_conversor_decimal_binario_2022/ui/widgets/digit_button.dart';
import 'package:flutter/material.dart';

class DecimalKeyboard extends StatelessWidget {
  final Function(String) _onPressed;
  final digits = ["7", "8", "9", "4", "5", "6", "1", "2", "3"];

  DecimalKeyboard(this._onPressed);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: digits.sublist(0, 3).map((digit) {
                return Expanded(
                  child: Container(
                    padding: EdgeInsets.all(5),
                    child: DigitButton(
                      onPressed: _onPressed,
                      digit: digit,
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: digits.sublist(3, 6).map((digit) {
                return Expanded(
                  child: Container(
                    padding: EdgeInsets.all(5),
                    child: DigitButton(
                      onPressed: _onPressed,
                      digit: digit,
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: digits.sublist(6).map((digit) {
                return Expanded(
                  child: Container(
                    padding: EdgeInsets.all(5),
                    child: DigitButton(
                      onPressed: _onPressed,
                      digit: digit,
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        )
      ],
    );
  }
}
