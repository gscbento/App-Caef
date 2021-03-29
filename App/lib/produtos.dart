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
      body: produtos(),
    );
  }
}

class produtos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            child: Card(
              elevation: 7,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              color: Colors.grey[900],
              shadowColor: Colors.yellow,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image(
                      image: AssetImage('img/camiseta.jpeg'),
                      height: 140.0,
                    ),
                    Column(
                      children: [
                        Text('Camiseta masculina'),
                        Text('R\$ 30.00',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        ButtonBar(
                          // margin:
                          alignment: MainAxisAlignment.center,
                          buttonHeight: 10,
                          //mainAxisSize: MainAxisSize.max,
                          buttonPadding: EdgeInsets.all(5),
                          children: <Widget>[
                            RaisedButton(
                              color: Colors.red,
                              child: Row(
                                children: [
                                  Icon(Icons.shopping_basket_outlined),
                                  Text(' Comprar'),
                                ],
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
                        Text('Disponível'),
                      ],
                    ),
                  ],
                ),
                margin: EdgeInsets.all(15.0),
              ),
            ),
            margin: EdgeInsets.all(15.0),
          ),
          Divider(),
          Container(
            child: Card(
              elevation: 7,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              color: Colors.grey[900],
              shadowColor: Colors.yellow,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image(
                      image: AssetImage('img/camiseta.jpeg'),
                      height: 140.0,
                    ),
                    Column(
                      children: [
                        Text('Camiseta masculina'),
                        Text('R\$ 30.00',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        ButtonBar(
                          // margin:
                          alignment: MainAxisAlignment.center,
                          buttonHeight: 10,
                          //mainAxisSize: MainAxisSize.max,
                          buttonPadding: EdgeInsets.all(5),
                          children: <Widget>[
                            RaisedButton(
                              color: Colors.red,
                              child: Row(
                                children: [
                                  Icon(Icons.shopping_basket_outlined),
                                  Text(' Comprar'),
                                ],
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
                        Text('Disponível'),
                      ],
                    ),
                  ],
                ),
                margin: EdgeInsets.all(15.0),
              ),
            ),
            margin: EdgeInsets.fromLTRB(15.0, 13.0, 15.0, 18.0),
          ),
          Divider(),
          Container(
            child: Card(
              elevation: 7,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              color: Colors.grey[900],
              shadowColor: Colors.yellow,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image(
                      image: AssetImage('img/camiseta.jpeg'),
                      height: 140.0,
                    ),
                    Column(
                      children: [
                        Text('Camiseta masculina'),
                        Text('R\$ 30.00',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        ButtonBar(
                          // margin:
                          alignment: MainAxisAlignment.center,
                          buttonHeight: 10,
                          //mainAxisSize: MainAxisSize.max,
                          buttonPadding: EdgeInsets.all(5),
                          children: <Widget>[
                            RaisedButton(
                              color: Colors.red,
                              child: Row(
                                children: [
                                  Icon(Icons.shopping_basket_outlined),
                                  Text('Comprar'),
                                ],
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
                        Text('Disponível'),
                      ],
                    ),
                  ],
                ),
                margin: EdgeInsets.all(15.0),
              ),
            ),
            margin: EdgeInsets.all(15.0),
          ),
        ],
      ),
    );
  }
}
