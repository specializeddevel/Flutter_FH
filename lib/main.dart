import 'package:flutter/material.dart';

import 'package:componentes/routes/routes.dart';
import 'package:componentes/pages/alert_page.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Componentes Aplicacion MAC',
      //home: HomePage(),
      initialRoute: '/',
      routes: getApplicationRoutes(),      
       onGenerateRoute: (RouteSettings settings) {
          print('Ruta no encontrada: ${ settings.name }');
          return MaterialPageRoute(
            builder: (context){
              return AlertPage();
            });
       }
    );
  }
}


