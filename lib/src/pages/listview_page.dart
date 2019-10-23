import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  List<int> _listaNum = [13, 32, 34, 45, 54, 68];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View State'),
      ),
      body: _crearLista(),
    );
  }

  Widget _crearLista() {
    return ListView.builder(
      itemCount: _listaNum.length,
      itemBuilder: (BuildContext context, int index) {

      final imagenIndex = _listaNum[index];

        return FadeInImage(
          image: NetworkImage('https://picsum.photos/500/300?image=$imagenIndex'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
          height: 200.0,
          fit: BoxFit.contain,
        );
      },
    );
  }
}
