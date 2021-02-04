import 'package:flutter/material.dart';
import 'package:my_app/screens/error_alert.dart';
import 'package:my_app/screens/form.dart';
import 'package:my_app/screens/home_screen.dart';
import 'package:my_app/screens/image_rendering.dart';
import 'package:my_app/screens/increment_screen.dart';
import 'package:my_app/screens/listview.dart';
import 'package:my_app/screens/navigation_screen_one.dart';

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
        IncrementScren.routeName: (ctx) => IncrementScren(),
        NavigatorScreenOne.routeName: (ctx) => NavigatorScreenOne(),
        ImageRendering.routeName: (ctx) => ImageRendering(),
        ErrorAlter.routeName: (ctx) => ErrorAlter(),
        ListViewCustom.routeName: (ctx) => ListViewCustom(),
      },
    );
  }
}
