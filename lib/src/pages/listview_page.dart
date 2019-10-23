import 'package:flutter/material.dart';
import 'dart:async';

class ListViewPage extends StatefulWidget {
  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
//Controlador del scroll de la lista
  ScrollController _scrollController = new ScrollController();

  List<int> _listaNum = new List();
  int _ultimoItem = 0;
  bool _isLoading = false;

//metodo que no regresa nada pero inicia el estado, sobre escribiendo el actual
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _agregar10();

    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        fetchData();
      }
    });
  }

//Destruir informacion cuando salimos de la pagina  no fugas de memoria
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('List View State'),
        ),
        body: Stack(
          children: <Widget>[
            _crearLista(),
            _crearLoding(),
          ],
        ));
  }

  Widget _crearLista() {
    return RefreshIndicator(
      // necesita un future para
      onRefresh: obtenerPagina1,
      // no poner () porque es un future y no se va  lazar por si solo
      child: ListView.builder(
        controller: _scrollController,
        itemCount: _listaNum.length,
        itemBuilder: (BuildContext context, int index) {
          final imagenIndex = _listaNum[index];

          return FadeInImage(
            image: NetworkImage(
                'https://picsum.photos/550/300?image=$imagenIndex'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 200.0,
            fit: BoxFit.contain,
          );
        },
      ),
    );
  }

//
  Future<Null> obtenerPagina1() {
    final duration = new Duration(seconds: 2);
   new Timer(duration, () {
      //Elimina los valores actuales
      _listaNum.clear();
      //carga ultimo item para usarlo como pibote y llamar 10 mas
      _agregar10();
    });
  
  return Future.delayed(duration);
  }

  //Metodo

  void _agregar10() {
    for (var i = 1; i < 10; i++) {
      _ultimoItem++;
      _listaNum.add(_ultimoItem);
    }
    setState(() {});
  }

  //FUTURE PROMESA
  Future<Null> fetchData() async {
    setState(() {
      _isLoading = true;
    });

    final duration = new Duration(seconds: 2);
    return new Timer(duration, respuestaHTTP);
  }

  void respuestaHTTP() {
    _isLoading = false;

//moverScroll
    _scrollController.animateTo(_scrollController.position.pixels + 100,
        curve: Curves.fastOutSlowIn, duration: Duration(milliseconds: 250));

    _agregar10();
  }

  Widget _crearLoding() {
    if (_isLoading) {
      return Column(
        //Center abajo
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[CircularProgressIndicator()],
          ),
          SizedBox(height: 15.0),
        ],
      );
    } else {
      return Container();
    }
  }
}
