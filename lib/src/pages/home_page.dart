import 'package:flutter/material.dart';
import '../providers/menu_provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes!'),
        elevation: 1.0,
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    //menuProvider.cargarData()
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _listaItems(snapshot.data),
        );
      },
    );
  }

  List<Widget> _listaItems(List<dynamic> data) {
    final List<Widget> opciones = [];
    data.forEach((opt) {
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: Icon(Icons.aspect_ratio, color: Colors.blue,),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue,),
        onTap: (){

        },
      );
       opciones..add( widgetTemp )
               ..add(Divider());
    });
    return opciones;
  }
}