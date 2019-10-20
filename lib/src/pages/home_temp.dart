import 'package:flutter/material.dart';

class HomePagesTemp extends StatelessWidget {
  final opciones = ['uno', 'dos', 'tres', 'cuaro'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(
        /*   children: _crearItems(), */
        children: _crearItemsCorta(),
      ),
    );
  }

//Metodo largo
  List<Widget> _crearItems() {
    List<Widget> lista = new List<Widget>();

    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
      );
      //operador de cascada
      lista..add(tempWidget)..add(Divider());
    }
    return lista;
  }

//Metodo corto regresa una nueva lista
  List<Widget> _crearItemsCorta() {
    return opciones.map((item) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item + '!!'),
            subtitle: Text('Arreglo'),
            leading: Icon(Icons.adb),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {},
          ),
          Divider()
        ],
      );
    }).toList();
  }
}
