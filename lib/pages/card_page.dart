import 'package:flutter/material.dart';
 
class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),        
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10), 
        children: <Widget>[        
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),          
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: (){
          Navigator.pop(context);
        },
      ),  
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.album, color: Colors.blue,),
            title: Text('Esta es la línea del titulo de la tarjeta.'),            
            subtitle: Text('Este es el texto de un subtitulo que deliberadamente lo estamos escribiendo muy largo para que parezca algo mas interesante de lo que es la tarjetita.'),            
            ),
          ButtonBar(
            alignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(onPressed: (){}, child: Text('Aceptar')),
              FlatButton(onPressed: (){}, child: Text('Cancelar')),              
            ],
          ),
          /* Row(
            mainAxisAlignment: MainAxisAlignment.end,          
            children: <Widget>[
              FlatButton(onPressed: (){}, child: Text('Cancelar')),
              FlatButton(onPressed: (){}, child: Text('Aceptar')),
            ],
          ), */
        ],
      ),
    );
  }

  
  Widget _cardTipo2() {
    final card = Container(      
      //clipBehavior: Clip.antiAlias,
      //elevation: 10.0,
      //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[          
          FadeInImage(
            //image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/1/1d/Upper_Kachura_lakes_-_Skardu_city_-Gilgit-Baltistan_Pakistan.jpg') ,
            image: NetworkImage('https://picsum.photos/500/300/?image=110'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            fit: BoxFit.cover,
            height: 300,
          ),
          /* Image(
            image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/1/1d/Upper_Kachura_lakes_-_Skardu_city_-Gilgit-Baltistan_Pakistan.jpg') ,
          ), */
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Acá deberia ir una descripcion de la imagen de arriba para lograr una mejor presentación'),            
          ), 
        ],
      ),

    );

    return Container(      
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset:  Offset(2.0, 10.0)
          )
        ],
        //color: Colors.red,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
    );
    
  }
}


