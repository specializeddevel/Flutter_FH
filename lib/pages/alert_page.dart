import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),        
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Mostrar Alerta'),
          shape: StadiumBorder(),
          color: Colors.blue,
          textColor: Colors.white,          
          onPressed: () => _mostrarAlert(context),          
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: (){
          Navigator.pop(context);
          
        },
      ),
    );    
  }

  void _mostrarAlert(context){
    showDialog(     
      context: context,
      barrierDismissible: true,
      builder: (contect){
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)) ,
          title: Text('Titulo'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Este es el contenido de la caja de alerta!'),
              FlutterLogo(size: 60.0,)
            ],),
            actions: <Widget>[
              FlatButton(
                child: Text('Cancelar'),
                onPressed: (){
                  Navigator.of(context).pop();
                }
              ,),
              FlatButton(
                child: Text('Cancelar'),
                onPressed: (){}
              ,)
            ],
        );
      }
    );
  }

}