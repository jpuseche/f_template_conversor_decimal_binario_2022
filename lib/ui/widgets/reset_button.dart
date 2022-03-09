import 'package:flutter/material.dart';

class ResetButton extends StatelessWidget {
  final VoidCallback _onPressed;

  ResetButton(this._onPressed);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      key: Key("reset"),
      color: Colors.cyan,
      onPressed: _onPressed,
      child: Text(
        "Reset",
        style: new TextStyle(
          fontSize: 20,
          color: Colors.white,
        ),
      ),
    );
  }
}
