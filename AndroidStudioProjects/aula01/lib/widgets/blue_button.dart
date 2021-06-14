import 'package:aula01/pages/hello_listview.dart';
import 'package:aula01/pages/hello_page1.dart';
import 'package:flutter/material.dart';

class BlueButton extends StatelessWidget {

  String text;


  BlueButton(this.text);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        color: Colors.blue,
        child: Text(
        text,
        style: TextStyle(
        color: Colors.white,
    )
    ),
    onPressed: () {
      _onClickOk(context);
    }
    );
  }

  }


void _onClickOk(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
    return HelloListview();
  }
  )
  );
}