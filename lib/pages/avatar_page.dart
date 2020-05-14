import 'package:flutter/material.dart';

class AvetarPage extends StatelessWidget {
  const AvetarPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(backgroundImage: NetworkImage('https://www.stock-free.org/images/baby-animal-photo-05032016-image-007.jpg'),
            radius: 25.0,),
          ),
          
          Container(
            margin: EdgeInsets.only(
              right: 10.0,
            ),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.purple,
            ),
          )
        ]
      ),
      body: Center(
        child: FadeInImage(
            image: NetworkImage('https://www.stock-free.org/images/baby-animal-photo-05032016-image-007.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            //fadeInDuration: Duration(milliseconds: 500),
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
}