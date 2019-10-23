import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import './src/routes/routes.dart';
import './src/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', 'US'),
        const Locale('es', 'ES'),
      ],
      initialRoute: '/',
      //Rutas
      routes: getApplicationRoutes(),
//Rutas dinamicas cuando no esta definida se dispara esta accion
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          builder: (BuildContext context) => HomePage(),
        );
      },
    );
  }
}
