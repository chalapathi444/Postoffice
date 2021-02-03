import 'package:flutter/material.dart';

Widget AppBarCustom() {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.white,
    title: Text(
      "ZAPPCODE",
      style: TextStyle(
          color: Colors.yellow[800],
          fontSize: 30,
          letterSpacing: 3,
          fontWeight: FontWeight.bold),
    ),
    centerTitle: true,
  );
}
