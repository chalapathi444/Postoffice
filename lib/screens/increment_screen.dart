import 'package:flutter/material.dart';

class IncrementScren extends StatefulWidget {
  static const routeName = '/incrementScreen';
  @override
  _IncrementScrenState createState() => _IncrementScrenState();
}

class _IncrementScrenState extends State<IncrementScren> {
  int _count = 0;
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
          'Button Clicks',
          style: TextStyle(
              color: Colors.pink[900], letterSpacing: 2, fontSize: 25),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.yellow[600],
        onPressed: () {
          setState(() {
            _count = _count + 5;
          });
        },
        child: Icon(Icons.add),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text(
            "Button Count Is ",
            style: TextStyle(color: Colors.black, fontSize: 18),
          )),
          Center(
            child: Text(
              '$_count',
              style: TextStyle(color: Colors.grey, fontSize: 18),
            ),
          )
        ],
      ),
    );
  }
}
