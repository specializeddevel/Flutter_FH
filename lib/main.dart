import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:componentes/routes/routes.dart';
import 'package:componentes/pages/home_page.dart';


void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [   
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en'), 
        const Locale('es'),
      ],
      debugShowCheckedModeBanner: false,
      title: 'Componentes Aplicacion MAC',
      //home: HomePage(),
      initialRoute: '/',
      routes: getApplicationRoutes(),      
      onGenerateRoute: (RouteSettings settings) {
          print('Ruta no encontrada: ${ settings.name }');
          return MaterialPageRoute(
            builder: (context){
              return HomePage();
            });
      }
    );
  }
}


