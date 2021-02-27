import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

/*          Contatos das Áreas              */

var numberPresidente = "+5511961101580";
var numberAcademico = "+556993964718";
var numberEventos = "+5519995369323";
var numberMarketing = "+5515996896425";
var numberRH = "+5511973779383";
var numberFinanceiro = "+5511963139419";
var numberAdm = "+5511968604490";

/////////////////////////////////////////////////

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

class CardsdeContato extends StatefulWidget {
  @override
  _CardsdeContatoState createState() => _CardsdeContatoState();
}

class _CardsdeContatoState extends State<CardsdeContato> {
  /*           Função WhatsApp               */
  void launchWhatsapp({@required number, @required message}) async {
    String url = "whatsapp://send?phone=$number&text=$message";

    await canLaunch(url) ? launch(url) : print("Não deu");
  }
//////////////////////////////////////////////////////////

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      /*Lista de cards de Contato*/
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
                      style: new TextStyle(
                        fontFamily: "Lucida",
                      ),
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
                          child: new Text('Fale Conosco'),
                          onPressed: () {
                            launchWhatsapp(
                                number: numberPresidente,
                                message: "Preciso falar com você :)");
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
              child: Container(
                //padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Acadêmico",
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
                          child: new Text('Fale Conosco'),
                          onPressed: () {
                            launchWhatsapp(
                                number: numberAcademico,
                                message: "Preciso falar com você :)");
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
              child: Container(
                //padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Eventos",
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
                          child: new Text('Fale Conosco'),
                          onPressed: () {
                            launchWhatsapp(
                                number: numberEventos,
                                message: "Preciso falar com você :)");
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
              child: Container(
                //padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Marketing",
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
                          child: new Text('Fale Conosco'),
                          onPressed: () {
                            launchWhatsapp(
                                number: numberMarketing,
                                message: "Preciso falar com você :)");
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
              child: Container(
                //padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Recursos Humanos",
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
                          child: new Text('Fale Conosco'),
                          onPressed: () {
                            launchWhatsapp(
                                number: numberRH,
                                message: "Preciso falar com você :)");
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
              child: Container(
                //padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Financeiro",
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
                          child: new Text('Fale Conosco'),
                          onPressed: () {
                            launchWhatsapp(
                                number: numberFinanceiro,
                                message: "Preciso falar com você :)");
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
              child: Container(
                //padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Administrativo",
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
                          child: new Text('Fale Conosco'),
                          onPressed: () {
                            launchWhatsapp(
                                number: numberAdm,
                                message: "Preciso falar com você :)");
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ]);
  }
}
