import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class AmountDisplay extends StatelessWidget {
  var controller = new MoneyMaskedTextController(
      thousandSeparator: ',', decimalSeparator: '.');

  AmountDisplay(double amount) {
    controller.updateValue(amount);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.green,
        child: Row(children: <Widget>[
          Expanded(
              child: Text("Rp ${_getAmountString()}",
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.ltr,
                  style: TextStyle(color: Colors.white, fontSize: 32)))
        ]));
  }

  String _getAmountString() {
    return controller.text.split('.')[0];
  }
}
