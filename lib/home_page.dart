import 'package:flutter/material.dart';
import 'botoes_page.dart';
import 'listas_page.dart';
import 'cards_page.dart';

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage>{

  String avatarPicture = 'https://picsum.photos/250?image=9';
  String backgroundHeader = 'http://ak3.picdn.net/shutterstock/videos/20972563/thumb/2.jpg';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Widgets App'),
        backgroundColor: Colors.red,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new  Text("Vinicius Damasceno"), 
              accountEmail: new Text("vinicius@gmail.com"),
              currentAccountPicture: new GestureDetector(
                onTap: () => print('Toque na Imagem'),
                child: new CircleAvatar(
                  backgroundImage: new NetworkImage(avatarPicture),
                ),
              ),
              decoration: new BoxDecoration(
                image: new DecorationImage(
                    fit: BoxFit.fill,
                    image: new NetworkImage(backgroundHeader)
                )
              ),
            ),
            new ListTile(
              title: new Text('Botões'),
              trailing: new Icon(Icons.arrow_forward),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new BotoesPage()));
              },
            ),
            new ListTile(
              title: new Text('Listas'),
              trailing: new Icon(Icons.arrow_forward),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new ListasPage()));
              },
            ),
            new ListTile(
              title: new Text("Cards"),
              trailing: new Icon(Icons.arrow_forward),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new CardsPage()));
              },
            ),
            new Divider(),
            new ListTile(
              title: new Text("Cancelar"),
              trailing: new Icon(Icons.close),
              onTap: (){
                Navigator.of(context).pop();
              },
            )
          ],
        ),
      ),
      body: new Center(
        child: new Text('Olá Mundo'),
      ),
    );
  }
}