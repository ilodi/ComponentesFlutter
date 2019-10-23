import 'package:flutter/material.dart';
import 'dart:math';

class AnimatedContainerPages extends StatefulWidget {
  @override
  _AnimatedContainerPagesState createState() => _AnimatedContainerPagesState();
}

class _AnimatedContainerPagesState extends State<AnimatedContainerPages> {
  double _width = 50.0;
  double _height = 50.0;
  Color _color = Colors.amberAccent;

  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Flutter <3'),
         elevation: 0.0,
         backgroundColor: Colors.brown,
      ),
      body: Center(
          child: AnimatedContainer(
        duration: Duration(milliseconds: 2000),
        curve: Curves.fastLinearToSlowEaseIn,
        width: _width,
        height: _height,
        decoration: BoxDecoration(borderRadius: _borderRadius, color: _color),
      )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.compare),
        onPressed: _cambiarForma,
      ),
    );
  }

  void _cambiarForma() {
    final random = Random();

    setState(() {
      _width = random.nextInt(300).toDouble();
      _height = random.nextInt(300).toDouble();
      _color = Color.fromARGB(
          random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
      _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
    });
  }
}
