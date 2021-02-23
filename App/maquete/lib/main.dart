import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//Pages
import './news.dart';
import './feedback.dart';
import './produtos.dart';
import './about.dart';
import './contact.dart';
import './guide.dart';

void main() {
  runApp(new MaterialApp(debugShowCheckedModeBanner: false, home: new MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: buildAppBar(), //Appbar de cima
      drawer: buildDrawer(), //Side menu

      //bottomNavigationBar: buildBottomAppBar(), //AppBar de baixo
    );
  }

  Drawer buildDrawer() {
    return Drawer(
      child: new Container(
        color: Colors.grey[700],
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 20, left: 5),
            ),
            ListTile(
              leading: FaIcon(FontAwesomeIcons.newspaper),
              title: Text(
                "Notícias",
                style: TextStyle(color: Colors.white70),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new NewsPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.group),
              title: Text(
                "FeedBack",
                style: TextStyle(color: Colors.orange[600]),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new FeedBackPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.check_box_outline_blank),
              title: Text(
                "Guia do estudante",
                style: TextStyle(color: Colors.yellowAccent[700]),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new GuidePage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text(
                "Produtos do CAEf",
                style: TextStyle(color: Colors.yellowAccent[700]),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new ProductsPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.connect_without_contact),
              title: Text(
                "SobreNós",
                style: TextStyle(color: Colors.limeAccent),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new AboutPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.import_contacts),
              title: Text(
                "Contato",
                style: TextStyle(color: Colors.amberAccent[400]),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new ContactPage()));
              },
            ),
            Divider(),
          ],
        ),
      ),
    );
  }

  /*BottomAppBar buildBottomAppBar() {
    return BottomAppBar(
      child: new Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.archive),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
    );
  }*/

  AppBar buildAppBar() {
    return new AppBar(
      backgroundColor: Colors.grey[850],
      elevation: 35.0,
      //Leading se precisar
      /*leading: (
         Drawer();
      ),
      
        IconButton(
        icon: new Icon(Icons.menu),
        onPressed: () {
          setState();
        },
      ),*/
      actions: <Widget>[
        new IconButton(
          icon: new Icon(Icons.home),
          tooltip: 'Home',
          onPressed: () {
            // home
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
    );
  }
}

void setState() {
  print("Button Press");
}
