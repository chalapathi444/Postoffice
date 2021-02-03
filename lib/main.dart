import 'package:flutter/material.dart';
import 'package:my_app/screens/form.dart';
import 'package:my_app/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: HomeScreen(),
      routes: {
        FormCustom.routeName: (ctx) => FormCustom(),
      },
    );
  }
}
