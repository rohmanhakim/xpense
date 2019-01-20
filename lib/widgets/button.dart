import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  double height;
  String text;
  IconData icon;
  Color color;
  Color textColor;
  VoidCallback onPressed;

  Button(Color color, String text, IconData icon, Color textColor,
      double height, VoidCallback onPressed) {
    this.text = text;
    this.icon = icon;
    this.color = color;
    this.textColor = textColor;
    this.height = height;
    this.onPressed = onPressed;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        child: text != null
            ? FlatButton(
            color: color,
            child: Row(children: <Widget>[
              Expanded(
                  child: Text(text,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20, color: textColor)))
            ]),
            onPressed: onPressed)
            : IconButton(
            icon: Icon(icon, color: Colors.white), onPressed: onPressed));
  }
}
