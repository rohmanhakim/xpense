import 'package:flutter/material.dart';
import 'package:xpense/typedefs.dart';
import 'package:xpense/widgets/number_button.dart';

class NumberPad extends StatelessWidget {

  VoidCallback _onClearPressed;
  VoidCallback _onBackSpacePressed;
  StringCallback _onNumberPressed;

  NumberPad(StringCallback onNumberPressed, VoidCallback onClearPressed, VoidCallback onBackSpacePressed){
    this._onClearPressed = onClearPressed;
    this._onBackSpacePressed = onBackSpacePressed;
    this._onNumberPressed = onNumberPressed;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18),
      color: Colors.green,
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: new NumberButton("1", _onNumber1Pressed),
              ),
              Expanded(
                child: new NumberButton("2", _onNumber2Pressed),
              ),
              Expanded(
                child: new NumberButton("3", _onNumber3Pressed),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: new NumberButton("4", _onNumber4Pressed),
              ),
              Expanded(
                child: new NumberButton("5", _onNumber5Pressed),
              ),
              Expanded(
                child: new NumberButton("6", _onNumber6Pressed),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: new NumberButton("7", _onNumber7Pressed),
              ),
              Expanded(
                child: new NumberButton("8", _onNumber8Pressed),
              ),
              Expanded(
                child: new NumberButton("9", _onNumber9Pressed),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: new NumberButton("C", _onClearPressed),
              ),
              Expanded(
                child: new NumberButton("0", _onNumber0Pressed),
              ),
              Expanded(
                child: new NumberButton.icon(
                    Icons.backspace, _onBackSpacePressed),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _onNumber0Pressed(){
    _onNumberPressed("0");
  }

  void _onNumber1Pressed(){
    _onNumberPressed("1");
  }

  void _onNumber2Pressed(){
    _onNumberPressed("2");
  }

  void _onNumber3Pressed(){
    _onNumberPressed("3");
  }

  void _onNumber4Pressed(){
    _onNumberPressed("4");
  }

  void _onNumber5Pressed(){
    _onNumberPressed("5");
  }

  void _onNumber6Pressed(){
    _onNumberPressed("6");
  }

  void _onNumber7Pressed(){
    _onNumberPressed("7");
  }

  void _onNumber8Pressed(){
    _onNumberPressed("8");
  }

  void _onNumber9Pressed(){
    _onNumberPressed("9");
  }
}