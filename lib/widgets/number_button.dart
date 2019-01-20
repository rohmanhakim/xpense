import 'package:flutter/material.dart';
import 'package:xpense/widgets/button.dart';

class NumberButton extends StatelessWidget {
  String _text;
  IconData _icon;
  VoidCallback _onPressed;

  NumberButton(String text, VoidCallback onPressed) {
    _text = text;
    _onPressed = onPressed;
  }

  NumberButton.icon(IconData icon, VoidCallback onPressed) {
    _icon = icon;
    _onPressed = onPressed;
  }

  @override
  Widget build(BuildContext context) {
    return FlatButton(
        color: Colors.green,
        child: new Row(children: <Widget>[
          Expanded(
              child: Button(
                  Colors.green, _text, _icon, Colors.white, 64, _onPressed))
        ]),
        onPressed: () {},
        shape: new BeveledRectangleBorder(
            borderRadius: new BorderRadius.all(new Radius.circular(0))));
  }
}
