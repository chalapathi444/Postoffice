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
          style: TextStyle(
              color: Colors.pink[900], letterSpacing: 2, fontSize: 25),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              "Network image",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width * 0.6,
            child: Image.network(
              "https://www.zappkode.com/images/home/logo.jpg",
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              "Asset Image",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width * 0.6,
            child: Image.asset(
              "lib/images/someimage.jpg",
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}
