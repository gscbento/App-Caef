import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red, brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
 
 /*{
  runApp(new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.red, brightness: Brightness.dark),
      home: Home(),);
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
      drawer: buildDrawer(),
      home: buildHomePage(),
      //bottomNavigationBar: buildBottomAppBar(), //AppBar de baixo
    );
  }

  Drawer buildDrawer() {
    return Drawer(
      child: new Container(
        color: Colors.grey[900],
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
                style: TextStyle(color: Colors.white70),
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
                style: TextStyle(color: Colors.white70),
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
                "Produtos do CAEF",
                style: TextStyle(color: Colors.white70),
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
                style: TextStyle(color: Colors.white70),
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
                style: TextStyle(color: Colors.white70),
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
  AppBar buildAppBar() {
    return new AppBar(
      //automaticallyImplyLeading: false,
      backgroundColor: Colors.grey[850],
      //Leading se precisar
      leading: (
         Drawer();
      ),
      
        IconButton(
        icon: new Icon(Icons.menu),
        onPressed: () {
          setState();
        },
      ),
    );
  }
}*/