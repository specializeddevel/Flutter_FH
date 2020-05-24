import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class ListaPage extends StatefulWidget {
  @override
  _ListaPageState createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {

  ScrollController _scrollController = new ScrollController();

  List<int> _listaNumeros = new List();  
  bool _isLoading = false;


  @override
  void initState() {    
    super.initState();
    _agregar10();

    _scrollController.addListener(() { 

      if(_scrollController.position.pixels == _scrollController.position.maxScrollExtent){
        //_agregar10();
        _fetchData();
        
      }

    });
  }

  @override
  Widget build(BuildContext context) {    
    return Scaffold(
      appBar: AppBar(
        title: Text('Listas')),
      body: Stack(
        children: <Widget>[
          _crearLista(),
          _crearLoading(),
        ],
      ),
    );
  }

  Widget _crearLista(){

    return RefreshIndicator(
      onRefresh: _reobtenerPagina1,
      child: ListView.builder(
        controller: _scrollController,
        itemCount: _listaNumeros.length,
        itemBuilder: (BuildContext context, index){
          final _imagen = _listaNumeros[index];
          return FadeInImage(
              image: NetworkImage('https://picsum.photos/500/300/?image=$_imagen'),
              placeholder: AssetImage('assets/jar-loading.gif'),
          );
        },      
      ),
    );
  }

  Future<void> _reobtenerPagina1() async {

    final duration = new Duration(seconds: 2);    
    _listaNumeros.clear();
    _agregar10();
    
    return Future.delayed(duration);
  }


  void _agregar10(){

    for (var i = 1; i < 11; i++) {      
      final aleatorio = Random();
      //_listaNumeros.add(_ultimoItem);
      _listaNumeros.add(aleatorio.nextInt(70));
    }

    setState(() {
      
    });

  }

  Future<void> _fetchData() async {

    _isLoading=true;
    setState(() {
      
    });

    final _duration = new Duration(seconds: 2);
    return new Timer(_duration, _respuestaHTTP);


  }

  void _respuestaHTTP() {

    _isLoading=false;
    _scrollController.animateTo(
      _scrollController.position.pixels + 200,
      curve: Curves.fastOutSlowIn,
      duration: Duration(milliseconds: 600),
    );
    


    _agregar10();


  }

@override
  void dispose() {    
    super.dispose();
    _scrollController.dispose();
  }

  Widget _crearLoading() {

    if (_isLoading) {
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircularProgressIndicator(),
              
            ],
          ),
          SizedBox(height: 15.0),
        ],
      );
    } else{
      return Container();
    }

  }

}