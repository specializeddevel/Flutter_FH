

import 'package:flutter/material.dart';

import 'package:componentes/providers/menu_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Componentes'),),   
        body: _lista(),   
    );
  }

  Widget _lista() {
  //print(menuProvider.opciones); //imprime el contenido de la lista opciones en consola
    return FutureBuilder(
      future: menuProvider.cargarData(),
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _listaItems(snapshot.data),
        );         
      },
    );       
  }

  List<Widget> _listaItems(List<dynamic> datos ) {

    List<Widget> opciones = [];
    datos.forEach( (opt) {
      Widget widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: Icon(Icons.check_circle, color: Colors.orangeAccent,),
        trailing: Icon(Icons.arrow_right),
        onTap: (){
          
        },
      );
      opciones..add(widgetTemp)
              ..add(Divider());
    }
    );
    return opciones;
  }

}