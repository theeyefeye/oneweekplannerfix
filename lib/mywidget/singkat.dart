import 'package:flutter/material.dart';

BoxDecoration deco = new BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(9)),
    color: Color.fromRGBO(55, 53, 57, 1));

class Symbol extends StatelessWidget {
  late final String sym;

  Symbol({required this.sym});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        sym,
        style: TextStyle(
          fontSize: 26,
          color: Colors.white,
        ),
      ),
    );
  }
}
