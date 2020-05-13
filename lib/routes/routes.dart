import 'package:componentes/pages/card_page.dart';
import 'package:flutter/material.dart';

import 'package:componentes/pages/alert_page.dart';
import 'package:componentes/pages/avatar_page.dart';
import 'package:componentes/pages/home_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes(){

   return <String, WidgetBuilder>{
        '/'     : (context){
                  return HomePage();
                  },
        'alert' : (BuildContext context) => AlertPage(),
        'avatar': (context) => AvetarPage(),
        'card': (context) => CardPage(),
   };
}