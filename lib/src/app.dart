import 'package:flutter/material.dart';
import 'pages/Login.dart';

//import 'package:pruebaflutter/src/pages/home_page.dart';

class MyApp extends StatelessWidget {
  //utiliza la extension de un widget staleess or st

  @override
  Widget build(context) {
    //devuelve elemento material App
    return MaterialApp(
      //muestra textos centrado
      //crea entorno estatico
      home: Center(
        //child: HomePage(),
        child: const LoginPage(
          title: 'dfbhjbk',
        ),
      ),
    );
  }
}
