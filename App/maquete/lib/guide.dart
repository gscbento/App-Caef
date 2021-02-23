import 'package:flutter/material.dart';

class GuidePage extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<GuidePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.grey[850],
        title: new Text('Guia do estudante'),
      ),
    );
  }
}
