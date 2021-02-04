import 'package:flutter/material.dart';

class NavigatorScreenOne extends StatelessWidget {
  static const routeName = '/navigatingpage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Navigated Page',
          style: TextStyle(
              color: Colors.pink[900], letterSpacing: 2, fontSize: 25),
        ),
      ),
      body: Center(
        child: Text("you naviagated from home page to this page"),
      ),
    );
  }
}
