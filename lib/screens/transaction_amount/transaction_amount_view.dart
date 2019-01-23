import 'package:flutter/material.dart';
import 'package:xpense/screens/transaction_amount/transaction_amount_view_model.dart';
import 'package:xpense/number_inputs.dart';
import 'package:xpense/widgets/button.dart';
import 'package:xpense/widgets/number_pad.dart';
import 'package:xpense/widgets/amount_display.dart';

class TransactionAmountView extends StatelessWidget
    implements NumberPadInputListener {
  final TransactionAmountViewModel viewModel;

  TransactionAmountView({@required this.viewModel}) : super();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: AmountDisplay(viewModel.amount),
        ),
        NumberPad(this),
        Button(Colors.white, "Next", null, Colors.green, 64, _onNextPressed),
      ],
    );
  }

  void _onNextPressed() {}

  @override
  void onBackSpacePressed() {
    viewModel.deleteAmountLastCharacter();
  }

  @override
  void onClearPressed() {
    viewModel.clearAmount();
  }

  @override
  void onNumberPressed(NumberInput input) {
    viewModel.updateAmount(input);
  }
}
