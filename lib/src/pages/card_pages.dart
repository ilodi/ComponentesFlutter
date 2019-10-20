import 'package:flutter/material.dart';

class CardPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _crearTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
        ],
      ),
    );
  }

  Widget _crearTipo1() {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.purple),
            title: Text('Soy El titulo'),
            subtitle: Text(
                'Un subtitulo para una app de flutter que cambiara mi vida como desarrollador'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Cancelar'),
                onPressed: () {},
              ),
              FlatButton(
                child: Text('Ok'),
                color: Colors.teal,
                onPressed: () {},
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    return Card(
      child: Column(
        children: <Widget>[

          FadeInImage(
            image:  NetworkImage('https://wallpaperplay.com/walls/full/5/4/f/34814.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
          ),

        Container(
          padding: EdgeInsets.all(10.0),
          child:   Text('I love 80s'),
          )
        ],
      ),
    );
  }
}
