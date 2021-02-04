import 'package:flutter/material.dart';

class ErrorAlter extends StatelessWidget {
  static const routeName = "/ErrorAlert";
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
          'Alert Message',
          style: TextStyle(
              color: Colors.pink[900], letterSpacing: 2, fontSize: 25),
        ),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 50,
          ),
          Center(
            child: Text(
              "How many fingures you have ?",
              style: TextStyle(fontSize: 15),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.45,
                right: MediaQuery.of(context).size.width * 0.45),
            child: TextField(
              keyboardType: TextInputType.number,
              onSubmitted: (String value) async {
                if (value == '5') {
                  await showDialog(
                      context: context,
                      builder: (ctx) {
                        return AlertDialog(
                          title: Text("Correnct"),
                          actions: [
                            FlatButton(
                                onPressed: () => Navigator.of(ctx).pop(),
                                child: Text("ok"))
                          ],
                        );
                      });
                } else {
                  await showDialog(
                      context: context,
                      builder: (ctx) {
                        return AlertDialog(
                          title: Text("Wrong answer"),
                          actions: [
                            FlatButton(
                                onPressed: () => Navigator.of(ctx).pop(),
                                child: Text("ok"))
                          ],
                        );
                      });
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
