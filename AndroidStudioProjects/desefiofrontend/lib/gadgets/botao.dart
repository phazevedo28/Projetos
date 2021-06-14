import 'package:flutter/material.dart';

class Botao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }

  botaoazul(String texto) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(texto),
      style: ElevatedButton.styleFrom(
          shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(30.0)),
      )),
    );
  }

  botaobranco(String texto) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(texto),
      style: ElevatedButton.styleFrom(
          side: BorderSide(color: Colors.blue),
          primary: Colors.white,
          onPrimary: Colors.blue,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
          )),
    );
  }

  botaoazulesc(String texto) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(texto),
      style: ElevatedButton.styleFrom(
          primary: Colors.indigo[900],
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
          )),
    );
  }

  botaobomba(String texto) {
    return FloatingActionButton.extended(
        onPressed: () {},
        backgroundColor: Colors.white,
        foregroundColor: Colors.blue,
        label: Text(texto));
  }

  botaotexto(String texto, Icon icone) {
    return TextButton.icon(onPressed: () {}, icon: icone, label: Text(texto));
  }
}
