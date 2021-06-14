import 'dart:ui';

import 'package:aula01/pages/hello_page1.dart';
import 'package:aula01/widgets/blue_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello Flutter"),
        centerTitle: false,
      ),
      body: _body(context),
    );
  }


  _body(BuildContext context) {
    return SingleChildScrollView( //para fazer rolagem
      child: Container(
      color: Colors.white,
      child: Column(
        //mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
        children: [_text(),_pageView(),_buttons(context)],
      ),
      )
    );
  }

  _pageView(){
    return Container(
      margin: EdgeInsets.all(10),
      height: 300,
      child:PageView(
        children: [
          _img("assets/images/dog1.png"),
          _img("assets/images/dog2.png"),
          _img("assets/images/dog3.png"),
          _img("assets/images/dog4.png"),
          _img("assets/images/dog5.png"),
        ],
      ),
    );
  }

   _buttons(BuildContext context) {
    return Column(
        children: [   Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:
          [BlueButton("ListView"),
            BlueButton("Page 2"),
            BlueButton("Page 3")],
        ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [BlueButton("Snack"),
              BlueButton("Dialog"),
              BlueButton("Toast")],
          )

        ],
      );
  }

  _text() {
    return Text(
      "Hello World",
      style: TextStyle(
          color: Colors.blue,
          fontSize: 30,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          decoration: TextDecoration.underline,
          decorationColor: Colors.red,
          decorationStyle: TextDecorationStyle.wavy),
    );
  }

  _img(String asset) {
    return Image.asset(
      asset,
      fit: BoxFit.contain,
    );
  }



  }



