import 'package:flutter/material.dart';
import 'package:my_app/widgets/app_bar_config.dart';
import 'package:string_validator/string_validator.dart' as validator;

class FormCustom extends StatelessWidget {
  static const routeName = '/form';
  final _mykey = GlobalKey<FormState>();
  void save(context) async {
    print("entering ");
    //print(_mykey.currentState.validate());
    if (_mykey.currentState.validate() == true) {
      print("entering here");
      await showDialog(
          context: context,
          builder: (ctx) => AlertDialog(
                content: Text(
                  "Saved",
                  style: TextStyle(fontSize: 20),
                ),
                actions: [
                  FlatButton(
                    child: Text("Ok"),
                    onPressed: () => Navigator.of(ctx).pop(),
                  ),
                ],
              ));
      Navigator.of(context).pop();
    } else {
      print("e");
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Form",
            style: TextStyle(
              color: Colors.pink[900],
              fontSize: 30,
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          actions: [
            Icon(
              Icons.assignment_ind,
              color: Colors.black,
            ),
          ],
          leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: Icon(
              Icons.logout,
              color: Colors.black,
            ),
          )),
      body: LayoutBuilder(
        builder: (buildcontext, buildconstraints) {
          return Container(
            height: buildconstraints.maxHeight,
            width: buildconstraints.maxWidth,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 30,
                    child: Center(
                      child: Text(
                        "Enter your Details",
                        style: TextStyle(
                            color: Colors.yellow[800],
                            fontSize: 30,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                  ),
                  Container(
                    height: buildconstraints.maxHeight - 30,
                    child: Form(
                      key: _mykey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            child: Text(
                              'Name',
                              style:
                                  TextStyle(color: Colors.brown, fontSize: 17),
                            ),
                            padding: EdgeInsets.only(left: 20),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(left: 20, top: 10, right: 20),
                            child: TextFormField(
                              autofocus: true,
                              cursorColor: Colors.black,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return "should be non empty";
                                }
                                String temp = "";
                                for (int i = 0; i < value.length; i++) {
                                  if (value[i] == ' ') {
                                    continue;
                                  }
                                  temp = temp + value[i];
                                }
                                if (!validator.isAlpha(temp)) {
                                  return "Enter valid name";
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                hintText: "Enter Name",
                                contentPadding: EdgeInsets.all(5),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(13))),
                              ),
                              keyboardType: TextInputType.name,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            child: Text(
                              'Mobile Number',
                              style:
                                  TextStyle(color: Colors.brown, fontSize: 17),
                            ),
                            padding: EdgeInsets.only(left: 20),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(left: 20, top: 10, right: 20),
                            child: TextFormField(
                              validator: (value) {
                                if (!validator.isNumeric(value) ||
                                    value.length != 10) {
                                  return "Enter valid mobile number";
                                }
                                return null;
                              },
                              autofocus: true,
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                hintText: "6301323023",
                                contentPadding: EdgeInsets.all(5),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(13))),
                              ),
                              keyboardType: TextInputType.name,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            child: Text(
                              'Email-id',
                              style:
                                  TextStyle(color: Colors.brown, fontSize: 17),
                            ),
                            padding: EdgeInsets.only(left: 20),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(left: 20, top: 10, right: 20),
                            child: TextFormField(
                              validator: (value) {
                                if (!validator.isEmail(value)) {
                                  return "Enter valid email";
                                }
                                return null;
                              },
                              autofocus: true,
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                hintText: "chalapathinagavarmab@gmail.com",
                                contentPadding: EdgeInsets.all(5),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(13))),
                              ),
                              keyboardType: TextInputType.name,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            child: Text(
                              'College Name',
                              style:
                                  TextStyle(color: Colors.brown, fontSize: 17),
                            ),
                            padding: EdgeInsets.only(left: 20),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(left: 20, top: 10, right: 20),
                            child: TextFormField(
                              validator: (value) {
                                if (value.isEmpty) {
                                  return "should be non empty";
                                }
                                String temp = "";
                                for (int i = 0; i < value.length; i++) {
                                  if (value[i] == ' ') {
                                    continue;
                                  }
                                  temp = temp + value[i];
                                }
                                if (!validator.isAlpha(temp)) {
                                  return "Enter valid name";
                                }
                                return null;
                              },
                              autofocus: true,
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                hintText: "Pragati engineering college",
                                contentPadding: EdgeInsets.all(5),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(13))),
                              ),
                              keyboardType: TextInputType.name,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Center(
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.yellow[700],
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: Center(
                                  child: TextButton(
                                onPressed: () => save(context),
                                child: Text(
                                  "SUBMIT",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                              )),
                              height: 50,
                              width: 100,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
