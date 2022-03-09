import 'package:f_template_conversor_decimal_binario_2022/ui/widgets/binary_keyboard.dart';
import 'package:f_template_conversor_decimal_binario_2022/ui/widgets/decimal_keyboard.dart';
import 'package:f_template_conversor_decimal_binario_2022/ui/widgets/reset_button.dart';
import 'package:f_template_conversor_decimal_binario_2022/ui/widgets/digit_button.dart';
import 'package:flutter/material.dart';

class ConverterScreen extends StatefulWidget {
  @override
  _ConverterScreenState createState() => _ConverterScreenState();
}

class _ConverterScreenState extends State<ConverterScreen> {
  String _binary = "";
  String _decimal = "0";
  bool _fromBinary = true;

  void _onDigitPressed(String digit) {
    if (_fromBinary) {
      setState(() {
        _binary = _binary + digit;
        _decimal = _binary.isNotEmpty
            ? int.parse(_binary, radix: 2).toRadixString(10)
            : _decimal;
      });
    } else {
      setState(() {
        if (_decimal == "0") {
          _decimal = digit;
        } else {
          _decimal = _decimal + digit;
        }
        _binary = _decimal.isNotEmpty
            ? int.parse(_decimal, radix: 10).toRadixString(2)
            : _binary;
      });
    }
  }

  void onTogglePressed() {
    setState(() {
      _fromBinary = !_fromBinary;
    });
  }

  void _onResetPressed() {
    setState(() {
      _binary = "";
      _decimal = "0";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              left: 10,
              right: 10,
              top: 5,
            ),
            alignment: Alignment.centerLeft,
            child: TextButton(
              key: Key("switch"),
              style: TextButton.styleFrom(
                primary: Colors.cyan,
              ),
              child: Text(
                _fromBinary ? "Binary -> Decimal" : "Decimal -> Binary",
                style: TextStyle(
                  color: Colors.cyan,
                ),
              ),
              onPressed: onTogglePressed,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            alignment: Alignment.centerRight,
            child: Text(
              '$_binary',
              textAlign: TextAlign.right,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.cyan,
                  fontSize: 35),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            alignment: Alignment.centerRight,
            child: Text(
              '$_decimal',
              textAlign: TextAlign.right,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.cyan,
                fontSize: 35,
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              child: _fromBinary
                  ? BinaryKeyboard(_onDigitPressed)
                  : DecimalKeyboard(_onDigitPressed),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.only(
                bottom: 5,
                left: 5,
                right: 5,
              ),
              child: _fromBinary
                  ? Container(
                      padding: EdgeInsets.all(5),
                      child: ResetButton(_onResetPressed),
                    )
                  : Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(5),
                            child: ResetButton(_onResetPressed),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(5),
                            child: DigitButton(
                              onPressed: _onDigitPressed,
                              digit: '0',
                            ),
                          ),
                        ),
                      ],
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
