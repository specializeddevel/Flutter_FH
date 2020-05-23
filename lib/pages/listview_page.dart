import 'dart:math';

import 'package:flutter/material.dart';

class ListaPage extends StatefulWidget {
  @override
  _ListaPageState createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {

  //List<int> _listaNumeros = [];  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Listas'),),
      body: _crearLista(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pop(context);
        },
        child: Icon(Icons.backspace),
      ),
    
    );
  }

  

  Widget _crearLista()  {   
    return FutureBuilder(
      future: _cargarLista(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot){
        return _llenaLista(snapshot.data, context);
      },            
    );
  }
  
  Future<List<dynamic>> _cargarLista() async {
    return await _poblarNumeros();    
  }
  
   _poblarNumeros(){
    List listTemp=[];
    final random = Random();

    for (int i = 0; i < 75; i++) {
      listTemp.add(random.nextInt(79));
    }    
    return listTemp;
  }
  
  Widget _llenaLista(List<dynamic> datos, context) {
    return ListView.builder(               
          padding: EdgeInsets.only(top: 10.0),
          itemCount: datos.length,      
          itemBuilder: (BuildContext context, index ){                    
            final _imagen = datos[index];                    
            return FadeInImage(
              
              image: NetworkImage('https://picsum.photos/500/300/?image=$_imagen'),
              placeholder: AssetImage('assets/jar-loading.gif'),
              
            );            
          },  
          
        );
  }
}