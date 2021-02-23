import 'package:flutter/material.dart';

class NewsPage extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.grey[850],
        title: new Text('Notícias'),
      ),
    );
  }
}
