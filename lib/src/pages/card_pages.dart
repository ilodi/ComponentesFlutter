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
        children: <Widget>[_crearTipo1()],
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
            subtitle: Text('Un subtitulo para una app de flutter que cambiara mi vida como desarrollador'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Cancelar'),
                onPressed: (){},
              ),
              FlatButton(
                child: Text('Ok'),
                onPressed: (){},
              )
            ]
            ,)
        ],
      ),
    );
  }
}
