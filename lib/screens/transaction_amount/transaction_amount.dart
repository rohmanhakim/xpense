import 'package:flutter/material.dart';
import 'package:xpense/screens/transaction_amount/transaction_amount_view_model.dart';
import 'package:xpense/screens/transaction_amount/transaction_amount_view.dart';

class TransactionAmountScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new TransactionAmountState();
  }
}

class TransactionAmountState extends State<TransactionAmountScreen> {
  var viewModel;

  TransactionAmountState() {
    this.viewModel = new TransactionAmountViewModelImpl(onStateChanged);
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: TransactionAmountView(viewModel: this.viewModel));
  }

  void onStateChanged(TransactionAmountViewModel state) {
    setState(() {
      this.viewModel = viewModel;
    });
  }
}
