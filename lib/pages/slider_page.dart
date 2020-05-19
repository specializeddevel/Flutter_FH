import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _valorSlider = 100.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
        AppBar(title: Text('Slider Page'),
      ),
      body: 
        Container(
          padding: EdgeInsets.only(top: 50.0),
          child: Column(              
              children: <Widget>[                
                _crearSlider(),
                Expanded(
                  child: _crearImagen()
                ),                
              ],
          ),
        ),
    );    
  }

  Widget _crearSlider() {

    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imagen',
     //divisions: 20,
      value: _valorSlider,
      min: 10.0,
      max: 400.0,
      onChanged: (valor){
        setState(() {
        _valorSlider = valor;          
        });
      }
    );

  }

  _crearImagen() {
    return Image(image: NetworkImage('https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2F2.bp.blogspot.com%2F-UtiB7IeBRao%2FUGBNZjXckHI%2FAAAAAAAAACo%2FYfxdBX41Xe4%2Fs1600%2FBatman_Logo.png&f=1&nofb=1'),
    width: _valorSlider,
    fit: BoxFit.contain,);    
  }
}