import 'package:flutter/material.dart';

class ProductsPage extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<ProductsPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.grey[850],
        title: new Text('Produtos'),
      ),
    );
  }
}
