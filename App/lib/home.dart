import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:maquete/homepage.dart';

//Pages
import './news.dart';
import './feedback.dart';
import './produtos.dart';
import './about.dart';
import './contact.dart';
import './guide.dart';
import 'backend/rss_2_json.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map<String, List> newsData = Map<String, List>();
  bool isLoading = true;
  getData() async {
    Future.wait([
      rssToJson('topnews'),
      rssToJson('india'),
      rssToJson('world-news'),
      rssToJson('business'),
      rssToJson('sports'),
      rssToJson('cricket'),
      rssToJson('education'),
      rssToJson('entertainment'),
      rssToJson('lifestyle'),
      rssToJson('health'),
      rssToJson('books'),
      rssToJson('trending'),
    ]).then((value) {
      value[0] = [];
      value.forEach((element) {
        value[0].addAll([...element ?? []]);
      });
      value[0].shuffle();
      newsData['topnews'] = value[0].sublist(0, 10);
      newsData['india'] = value[1];
      newsData['world'] = value[2];
      newsData['business'] = value[3];
      newsData['sports'] = value[4];
      newsData['cricket'] = value[5];
      newsData['education'] = value[6];
      newsData['entertainment'] = value[7];
      newsData['lifestyle'] = value[8];
      newsData['health-fitness'] = value[9];
      newsData['books'] = value[10];
      newsData['its-viral'] = value[11];
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Builder(
            builder: (context) => IconButton(
              icon: FaIcon(
                FontAwesomeIcons.chevronRight,
                size: 30.0,
              ),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
        ),
        backgroundColor: Colors.grey[850],
        elevation: 0,
        centerTitle: false,
        titleSpacing: 0,
      ),
      drawer: Drawer(
        //background: Colors.grey[900],
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 20, left: 5),
            ),
            /*ListTile(
              trailing: FaIcon(FontAwesomeIcons.newspaper),
              title: Text(
                "Notícias",
                style: TextStyle(
                  color: Colors.white70,
                  fontFamily: 'Avenir',
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
                //textAlign: TextAlign.center,
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new NewsPage()));
              },
            ),
            Divider(
              height: 50,
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
            ),*/
            ListTile(
              trailing: Icon(Icons.check_box_outline_blank),
              title: Text(
                "Guia do estudante",
                style: TextStyle(
                  color: Colors.white70,
                  fontFamily: 'Avenir',
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
                //textAlign: TextAlign.center,
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new GuidePage()));
              },
            ),
            Divider(
              height: 50,
            ),
            ListTile(
              trailing: Icon(Icons.shopping_cart),
              title: Text(
                "Produtos do CAEF",
                style: TextStyle(
                  color: Colors.white70,
                  fontFamily: 'Avenir',
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
                //textAlign: TextAlign.center,
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new ProductsPage()));
              },
            ),
            Divider(
              height: 50,
            ),
            ListTile(
              trailing: Icon(Icons.connect_without_contact),
              title: Text(
                "SobreNós",
                style: TextStyle(
                  color: Colors.white70,
                  fontFamily: 'Avenir',
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
                //textAlign: TextAlign.center,
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new AboutPage()));
              },
            ),
            Divider(
              height: 50,
            ),
            ListTile(
              trailing: Icon(Icons.import_contacts),
              title: Text(
                "Contato",
                style: TextStyle(
                  color: Colors.white70,
                  fontFamily: 'Avenir',
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
                //textAlign: TextAlign.center,
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
      body: isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : HomePage(
              newsData: newsData,
            ),
    );
  }
}
