import 'package:flutter/material.dart';

class HelloPage1 extends StatelessWidget {
  const HelloPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 1"),
        centerTitle: false,
      ),
      body: _body(context)
    );
  }

  _body(context) {
    return Center(
      child: RaisedButton(
          onPressed: () => Navigator.pop(context),
          color: Colors.blue,
      child: Text("Voltar",
        style: TextStyle(color: Colors.white)
    )
    )
    );
  }
}
