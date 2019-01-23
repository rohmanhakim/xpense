import 'package:flutter/material.dart';

class MockApp extends StatelessWidget {
  Widget _home;

  MockApp(Widget this._home);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Xpense App',
        theme: new ThemeData(primaryColor: Colors.white),
        home: _home);
  }
}
