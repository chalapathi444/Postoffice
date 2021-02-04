import "package:flutter/material.dart";
import 'package:my_app/screens/error_alert.dart';
import 'package:my_app/screens/form.dart';
import 'package:my_app/screens/image_rendering.dart';
import 'package:my_app/screens/increment_screen.dart';
import 'package:my_app/screens/listview.dart';
import 'package:my_app/screens/navigation_screen_one.dart';
import 'package:my_app/widgets/app_bar_config.dart';
import '../widgets/app_bar_config.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var list = [
      () {
        Navigator.pushNamed(context, FormCustom.routeName);
      },
      () {
        Navigator.pushNamed(context, IncrementScren.routeName);
      },
      () {
        Navigator.pushNamed(context, NavigatorScreenOne.routeName);
      },
      () {
        Navigator.pushNamed(context, ImageRendering.routeName);
      },
      () {
        Navigator.pushNamed(context, ErrorAlter.routeName);
      },
      () {
        Navigator.pushNamed(context, ListViewCustom.routeName);
      }
    ];
    return Scaffold(
        appBar: AppBarCustom(),
        body: ListView.builder(
            itemCount: 6,
            itemBuilder: (ctx, idex) {
              return InkWell(
                onTap: list[idex],
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.yellow[100], Colors.yellow[600]])),
                  margin:
                      EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
                  child: Center(
                      child: Text(
                    "Task ${idex + 1}",
                    style: TextStyle(fontSize: 24, color: Colors.pink),
                  )),
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                ),
              );
            }));
  }
}
