import 'package:flutter/material.dart';

class TextIn extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container();
  }

  texto(String texto){
      return Text(texto,
        style: TextStyle(color: Colors.indigo[900],
      fontSize:20));
  }

  titulo(String texto){
    return Text(
      texto,
      style: TextStyle(
          color: Colors.indigo[900],
          fontWeight: FontWeight.bold,
          fontSize:40),
    );

  }
}
