import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(new MaterialApp(home: new MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.grey[850],
        leading: new Icon(Icons.menu),
        elevation: 35.0,
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.home),
            tooltip: 'Home',
            onPressed: () {
              // home
            },
          ),
          new IconButton(
            icon: new Icon(Icons.shopping_cart),
            tooltip: 'Open shopping cart',
            onPressed: () {
              // handle the press
            },
          ),
          new IconButton(
              icon: new Icon(Icons.search),
              tooltip: 'Buscar',
              onPressed: () {
                //search
              }),
          new IconButton(
              icon: new Icon(Icons.edit),
              tooltip: 'Opções',
              onPressed: () {
                //edit
              }),
        ],
      ),
    );
  }
}
