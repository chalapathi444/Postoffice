import "package:flutter/material.dart";
import 'package:my_app/screens/form.dart';
import 'package:my_app/widgets/app_bar_config.dart';
import '../widgets/app_bar_config.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarCustom(),
        body: ListView.builder(
            itemCount: 5,
            itemBuilder: (ctx, idex) {
              return Container(
                margin:
                    EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
                color: Colors.yellow[100],
                child: Center(
                    child: Text(
                  "Task ${idex + 1}",
                  style: TextStyle(fontSize: 24, color: Colors.pink),
                )),
                height: 100,
                width: MediaQuery.of(context).size.width,
              );
            }));
  }
}
