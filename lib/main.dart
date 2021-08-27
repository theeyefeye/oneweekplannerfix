import 'package:flutter/material.dart';
import 'MainScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'One Week Planner',
      theme: ThemeData(scaffoldBackgroundColor: Color.fromRGBO(37, 36, 39, 1)),
      home: MainScreen(),
    );
  }
}
