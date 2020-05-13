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
          child: Text('Mostrar Alert'),
          shape: StadiumBorder(),
          color: Colors.blue,
          textColor: Colors.white,          
          onPressed: (){},
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

  void _mostrarAlert(){
    
  }

}