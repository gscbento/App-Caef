import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.grey[850],
        title: new Text('Sobre Nós'),
      ),
      body: Sobrenos(),
    );
  }
}

/*
class AboutPage extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.grey[850],
        title: new Text('Sobre Nós'),
      ),
    );
  }
}*/

/*class AboutContext extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget texto = Container(
      color: Color.fromRGBO(243, 243, 243, 1.0),
      child: Text(
          'Na EEL-USP, cada um dos 6 cursos possui um Centro Acadêmico (CA). O CAEF - Centro '
          'Acadêmico de Engenharia Física - é a entidade máxima de representação do alunos de EF da '
          'Universidade de São Paulo. O CAEF é responsável pela representação dos alunos, fazendo a '
          'interlocução dos seus interesses perante a administração da faculdade e todo o corpo '
          'docente. Também é função do CAEF organizar atividades de caráter cultural, social e '
          'científico que contribuam para a formação do aluno de Engenharia Física. Estas e outras '
          'informações podem ser encontradas no Estatuto Social do CAEF.'),
    );
    return Scaffold();
  }
}

//parte a ser Integrada
*/
class Sobrenos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget texto = Container(
      child: Align(
        alignment: Alignment.topCenter,
        child: Text(
          'Na EEL-USP, cada um dos 6 cursos possui um Centro Acadêmico (CA). O CAEF - Centro Acadêmico de Engenharia Física - é a entidade máxima de representação do alunos de EF da Universidade de São Paulo. O CAEF é responsável pela representação dos alunos, fazendo a interlocução dos seus interesses perante a administração da faculdade e todo o corpodocente. Também é função do CAEF organizar atividades de caráter cultural, social ecientífico que contribuam para a formação do aluno de Engenharia Física. Estas e outras informações podem ser encontradas no Estatuto Social do CAEF. ',
          textAlign: TextAlign.justify,
          softWrap: true,
        ),
      ),
      margin: EdgeInsets.all(15.0),
      //color: Colors.blue[100],
    );
    return Scaffold(
      body: ListView(
        children: [
          texto,
          Divider(
            height: 10,
          ),
          ExpansionTile(
            title: Text('Assuntos Acadêmicos'),
            children: <Widget>[
              Divider(),
              Container(
                child: Text(
                  'É a área do CAEF responsável pela interação entre o corpo discente do curso de Engenharia Física e o corpo docente. As atividades do Acadêmico incluem reformulação da grade de Engenharia Física visando o melhoramento do curso através da opinião do corpo discente e docente, auxiliar na organização de eventos acadêmicos, visando a responsabilidade pelas soluções dos problemas das interações com a administração da EEL e promover mudanças na grade horária semestral para melhor atender discentes e docentes.',
                  textAlign: TextAlign.justify,
                  softWrap: true,
                ),
                margin: EdgeInsets.all(15.0),
              ),
            ],
          ),
          Divider(
            height: 10,
          ),
          ExpansionTile(
            title: Text('Administrativo'),
            children: <Widget>[
              Divider(),
              Container(
                //child: Text(),
                margin: EdgeInsets.all(15.0),
              ),
            ],
          ),
          Divider(
            height: 10,
          ),
          ExpansionTile(
            title: Text('Eventos'),
            children: <Widget>[
              Divider(),
              Container(
                child: Text(
                  'É a área responsável por fomentar atividades de cunho científico-cultural e estudantil, além de promover eventos relacionados à formação acadêmica. As atividades do departamento de Eventos incluem entrar em contato com patrocinadores ou parceiros para a realização de eventos, fazer orçamentos para a execução de eventos e apresentar propostas. Tais atividades, normalmente (mas nãoexclusivamente), usam softwares edição de texto, de planilhas eletrônicas e de apresentação',
                  textAlign: TextAlign.justify,
                  softWrap: true,
                ),
                margin: EdgeInsets.all(15.0),
              ),
            ],
          ),
          Divider(
            height: 10,
          ),
          ExpansionTile(
            title: Text('Financeiro'),
            children: <Widget>[
              Divider(),
              Container(
                child: Text(
                    'É a área responsável por ter sob guarda e responsabilidade todos os bens '
                    'e valores pertencentes ao CAEF. Ao financeiro é cabida a tarefa de efetuar quaisquer '
                    'pagamentos e recebimentos devidamente comprovados, ter sob controle toda a escrituração '
                    'e movimentação financeira feita sob o nome do CAEF e elaborar e publicar um relatório '
                    'contendo as informações sobre as atividades financeiras do CAEF aos estudantes de '
                    'Engenharia Física do Campus'),
                margin: EdgeInsets.all(15.0),
              ),
            ],
          ),
          Divider(
            height: 5,
          ),
          ExpansionTile(
            title: Text('Marketing'),
            children: <Widget>[
              Divider(),
              Container(
                child: Text(
                    'É a área responsável por divulgar as atividades do CAEF e assuntos '
                    'relevantes aos estudantes de Engenharia Física, além de manter contatos e relações de '
                    'colaboração com outros grupos e entidades. As atividades do Marketing incluem normalmente, '
                    'mas não exclusivamente, o uso de softwares de edição de texto, de planilhas eletrônicas, '
                    'de edição de imagens, de edição de vídeos e uso de equipamentos como câmeras de vídeo e microfones.'),
                margin: EdgeInsets.all(15.0),
              ),
            ],
          ),
          Divider(
            height: 10,
          ),
          ExpansionTile(
            title: Text('Gestão de Pessoas'),
            children: <Widget>[
              Divider(),
              Container(
                child: Text(
                    'É a área responsável pela manutenção das relações interpessoais entre '
                    'os membros, participantes de uma determinada gestão do CAEF, assim como, do '
                    'desenvolvimento dessas relações de maneira saudável e profissional.'),
                margin: EdgeInsets.all(15.0),
              ),
            ],
          ),
          Divider(
            height: 10,
          ),
          ExpansionTile(
            title: Text('Presidência'),
            children: <Widget>[
              Divider(),
              Container(
                child: Text(
                    'É a área responsável por representar o CAEF e os alunos do curso de '
                    'Engenharia Física perante a coordenação do curso e a comissão de graduação da faculdade. '
                    'Além da tarefa de supervisionar todas as demais áreas presentes no CAEF, validar ou não '
                    'a execução dos projetos futuros e continuação dos presentes e manter a harmonia entre as '
                    'áreas, assim garantindo um bom funcionamento do CAEF.'),
                margin: EdgeInsets.all(15.0),
              ),
            ],
          ),
          Divider(
            height: 10,
          ),
        ],
      ),
    );
  }
}
