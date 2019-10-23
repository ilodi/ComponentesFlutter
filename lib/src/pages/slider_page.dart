import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 50.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliders'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            Expanded(
              child: _crearImagen(),
            )
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      //  divisions: 20,
      value: _valorSlider,
      min: 10.0,
      max: 400.0,
      onChanged: (valor) {
        setState(() {
          _valorSlider = valor;
        });
      },
    );
  }

  Widget _crearImagen() {
    return FadeInImage(
      width: _valorSlider,
      image: NetworkImage(
          'https://s2.eestatic.com/2019/05/09/cultura/cine/Cine_397221994_122427924_1706x960.jpg'),
      placeholder: AssetImage('assets/jar-loading.gif'),
      fadeInDuration: Duration(milliseconds: 200),
    );
  }
}
