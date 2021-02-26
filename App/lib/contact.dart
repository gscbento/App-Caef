import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.grey[850],
          title: new Text('Contato'),
        ),
        body: CardsdeContato());
  }
}
/*SafeArea(
        child: Column(
          children: <Widget>[
            GridView.count(
              shrinkWrap: true,
              primary: true,
              crossAxisCount: 2,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[700],
                    borderRadius: BorderRadius.circular(60),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[700],
                    borderRadius: BorderRadius.circular(60),
                  ),
                ),
                Container(
                  color: Colors.blue,
                ),
                Container(color: Colors.yellow),
              ],
            ),
            Divider(
              color: Colors.grey.shade600,
            ),
            Center(
              child: RaisedButton(
                child: Text("Button"),
                onPressed: () {},
              ),
            )
          ],
        ),
      );*/

class CardsdeContato extends StatefulWidget {
  @override
  _CardsdeContatoState createState() => _CardsdeContatoState();
}

class _CardsdeContatoState extends State<CardsdeContato> {
  void launchWhatsapp({@required number, @required message}) async {
    String url = "whatsapp://send?phone=$number&text=$message";

    await canLaunch(url) ? launch(url) : print("Não deu");
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Expanded(
        child: new GridView.count(
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          primary: true,
          crossAxisCount: 2,
          children: <Widget>[
            Card(
              color: Colors.grey[700],
              child: Container(
                //padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Presidência",
                      maxLines: 1,
                    ),
                    Image(height: 90, image: AssetImage('img/president.png')),
                    ButtonBar(
                      // margin:
                      alignment: MainAxisAlignment.center,
                      buttonHeight: 10,
                      //mainAxisSize: MainAxisSize.max,
                      buttonPadding: EdgeInsets.all(5),
                      children: <Widget>[
                        RaisedButton(
                          color: Colors.blue,
                          child: new Text('CONTATO'),
                          onPressed: () {
                            launchWhatsapp(
                                number: "+556993964718",
                                message: "Vencemos carai");
                            print('Dale');
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Card(
              color: Colors.grey[700],
              child: GestureDetector(onTap: () {
                print('1');
              }),
            ),
            Card(
              color: Colors.grey[700],
              child: GestureDetector(onTap: () {
                print('1');
              }),
            ),
            Card(
              color: Colors.grey[700],
              child: GestureDetector(onTap: () {
                print('2');
              }),
            ),
            Card(
              color: Colors.grey[700],
              child: GestureDetector(onTap: () {
                print('3');
              }),
            ),
            Card(
              color: Colors.grey[700],
              child: GestureDetector(onTap: () {
                print('4');
              }),
            ),
            Card(
              color: Colors.grey[700],
              child: GestureDetector(onTap: () {
                print('5');
              }),
            ),
            Card(
              color: Colors.grey[700],
              child: GestureDetector(onTap: () {
                print('6');
              }),
            ),
          ],
        ),
      ),
    ]);
  }
}
