import 'package:flutter/material.dart';
import 'package:xpense/screens/add_transaction.dart';

void main() => runApp(XpenseApp());

class XpenseApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Xpense App',
        theme: new ThemeData(primaryColor: Colors.white),
        home: AddTransactionPage());
  }
}




