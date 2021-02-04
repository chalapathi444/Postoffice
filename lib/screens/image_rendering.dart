import 'package:flutter/material.dart';

class ImageRendering extends StatelessWidget {
  static const routeName = '/imagerendering';
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
          'Image Rendering',
          style: TextStyle(color: Colors.pink, letterSpacing: 2, fontSize: 25),
        ),
      ),
    );
  }
}
