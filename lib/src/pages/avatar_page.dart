import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {

//Metadaros Start
static final pageName = 'avatar';
//Metadatos End

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Pages'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(3.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://s2.eestatic.com/2019/05/09/cultura/cine/Cine_397221994_122427924_1706x960.jpg'),
              radius: 25.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 15.0),
            child: CircleAvatar(
              child: Text('PK'),
              backgroundColor: Colors.amberAccent,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage(
              'https://s2.eestatic.com/2019/05/09/cultura/cine/Cine_397221994_122427924_1706x960.jpg'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}
