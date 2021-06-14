import 'package:flutter/material.dart';

class TopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height * 0.15,
      width: MediaQuery.of(context).size.width * 1,
      child: Column(children: [
        SizedBox(height: 20),
        RichText(
          text: TextSpan(
              text: "MEDIDA",
              style: TextStyle(
                color: Colors.indigo[900],
                fontSize: 30,
              ),
              children: [
                TextSpan(
                    text: "  INTELIGENTE",
                    style: TextStyle(
                        color: Colors.indigo[900],
                        fontSize: 30,
                        fontWeight: FontWeight.bold))
              ]),
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset("assets/images/inmetro-logo.png", width: 100),
          SizedBox(width: 30),
          Image.asset("assets/images/iti-logo.png", width: 100)
        ]),
      ]),
    );
  }
}
