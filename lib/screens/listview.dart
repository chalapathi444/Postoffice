import 'package:flutter/material.dart';

class ListViewCustom extends StatefulWidget {
  static const routeName = "/listview";
  @override
  _ListViewState createState() => _ListViewState();
}

class _ListViewState extends State<ListViewCustom> {
  var _itemCount = 0;
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
          'Scrollable List View',
          style: TextStyle(
              color: Colors.pink[900], letterSpacing: 2, fontSize: 25),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
            child: Center(
                child: Text(
              "${index}",
              style: TextStyle(color: Colors.yellow[900], fontSize: 20),
            )),
            height: 100,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.blue[100], Colors.blue[500]],
                    begin: Alignment.topRight,
                    end: Alignment.bottomRight)),
          );
        },
        itemCount: _itemCount,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            _itemCount++;
          });
        },
      ),
    );
  }
}
