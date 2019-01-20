import 'package:flutter/material.dart';
import 'package:xpense/widgets/button.dart';
import 'package:xpense/widgets/number_pad.dart';
import 'package:xpense/widgets/amount_display.dart';

class AddTransactionPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new AddTransactionState(0);
  }
}

class AddTransactionState extends State<AddTransactionPage> {
  static const int DIGIT_LIMIT = 10;
  double _amount = 0;
  String _amountString = "0";

  AddTransactionState(double initialAmount) {
    this._amount = initialAmount;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: AmountDisplay(_getAmountAsDouble()),
          ),
          NumberPad(_onNumberPressed, _onClearPressed, _onBackSpacePressed),
          Button(Colors.white, "Next", null, Colors.green, 64, _onNextPressed),
        ],
      ),
    );
  }

  void _appendAmount(String numberString) {
    if (_amount
        .toInt()
        .toString()
        .length < DIGIT_LIMIT) {
      _amountString = _getAmountString() + numberString;
      this._setAmount(double.parse(_getAmountString()));
    }
  }

  void _deleteAmount() {
    if (_getAmountString().length > 1) {
      _amountString =
          _getAmountString().substring(0, _getAmountString().length - 1);
    } else {
      _amountString = "0";
    }
    this._setAmount(double.parse(_getAmountString()));
  }

  void _setAmount(double amount) {
    setState(() {
      this._amount = amount;
    });
  }

  double _getAmountAsDouble() {
    return this._amount;
  }

  String _getAmountString() {
    return this._amountString.replaceAll(',', '');
  }

  void _onNextPressed() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Amount"),
            content: Text("$_amount"),
          );
        });
  }

  void _onNumberPressed(String numberString) {
    _appendAmount(numberString);
  }

  void _onClearPressed() {
    _setAmount(0);
    _amountString = "0";
  }

  void _onBackSpacePressed() {
    _deleteAmount();
  }
}
