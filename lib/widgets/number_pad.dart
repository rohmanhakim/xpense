import 'package:flutter/material.dart';
import 'package:xpense/number_inputs.dart';
import 'package:xpense/typedefs.dart';
import 'package:xpense/widgets/number_button.dart';

class NumberPad extends StatelessWidget {
  VoidCallback _onClearPressed;
  VoidCallback _onBackSpacePressed;
  InputNumberCallback _onNumberPressed;

  NumberPad(NumberPadInputListener listener) {
    this._onClearPressed = listener.onClearPressed;
    this._onBackSpacePressed = listener.onBackSpacePressed;
    this._onNumberPressed = listener.onNumberPressed;
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
                child:
                new NumberButton.icon(Icons.backspace, _onBackSpacePressed),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _onNumber0Pressed() {
    _onNumberPressed(NumberInput.input0);
  }

  void _onNumber1Pressed() {
    _onNumberPressed(NumberInput.input1);
  }

  void _onNumber2Pressed() {
    _onNumberPressed(NumberInput.input2);
  }

  void _onNumber3Pressed() {
    _onNumberPressed(NumberInput.input3);
  }

  void _onNumber4Pressed() {
    _onNumberPressed(NumberInput.input4);
  }

  void _onNumber5Pressed() {
    _onNumberPressed(NumberInput.input5);
  }

  void _onNumber6Pressed() {
    _onNumberPressed(NumberInput.input6);
  }

  void _onNumber7Pressed() {
    _onNumberPressed(NumberInput.input7);
  }

  void _onNumber8Pressed() {
    _onNumberPressed(NumberInput.input8);
  }

  void _onNumber9Pressed() {
    _onNumberPressed(NumberInput.input9);
  }
}

abstract class NumberPadInputListener {
  void onClearPressed();

  void onBackSpacePressed();

  void onNumberPressed(NumberInput input);
}
