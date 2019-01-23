import 'package:xpense/number_inputs.dart';

abstract class TransactionAmountViewModel {
  double amount;
  TransactionAmountViewModelCallback onStateChanged;

  void updateAmount(NumberInput input);

  void clearAmount();

  void deleteAmountLastCharacter();
}

typedef TransactionAmountViewModelCallback = Function(
    TransactionAmountViewModel value);

class TransactionAmountViewModelImpl implements TransactionAmountViewModel {
  static const int DIGIT_LIMIT = 10;
  String _amountString = "0";

  @override
  double amount = 0;

  @override
  TransactionAmountViewModelCallback onStateChanged;

  TransactionAmountViewModelImpl(
      TransactionAmountViewModelCallback onStateChanged) {
    this.onStateChanged = onStateChanged;
  }

  @override
  void clearAmount() {
    _amountString = "0";
    this._setAmount(0);
  }

  @override
  void deleteAmountLastCharacter() {
    if (_getAmountString().length > 1) {
      _amountString =
          _getAmountString().substring(0, _getAmountString().length - 1);
    } else {
      _amountString = "0";
    }
    this._setAmount(double.parse(_getAmountString()));
  }

  @override
  void updateAmount(NumberInput input) {
    String numberString;
    switch (input) {
      case NumberInput.input0:
        numberString = "0";
        break;
      case NumberInput.input1:
        numberString = "1";
        break;
      case NumberInput.input2:
        numberString = "2";
        break;
      case NumberInput.input3:
        numberString = "3";
        break;
      case NumberInput.input4:
        numberString = "4";
        break;
      case NumberInput.input5:
        numberString = "5";
        break;
      case NumberInput.input6:
        numberString = "6";
        break;
      case NumberInput.input7:
        numberString = "7";
        break;
      case NumberInput.input8:
        numberString = "8";
        break;
      case NumberInput.input9:
        numberString = "9";
        break;
    }

    if (amount.toInt().toString().length < DIGIT_LIMIT) {
      _amountString = _getAmountString() + numberString;
      this._setAmount(double.parse(_getAmountString()));
    }
  }

  String _getAmountString() {
    return this._amountString.replaceAll(',', '');
  }

  void _setAmount(double amount) {
    this.amount = amount;
    if (onStateChanged != null) {
      onStateChanged(this);
    }
  }
}
