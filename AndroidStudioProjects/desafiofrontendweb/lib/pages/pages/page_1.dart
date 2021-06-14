import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height*0.08,
          ),
          Image.asset("assets/images/bluetooth.jpg",
            width:MediaQuery.of(context).size.width*0.50,
          )

        ],),

    );
  }
}
