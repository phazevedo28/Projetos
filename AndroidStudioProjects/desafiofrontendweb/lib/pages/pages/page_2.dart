
import 'package:desafiofrontendweb/widgets/widgets/botao.dart';
import 'package:desafiofrontendweb/widgets/widgets/cliphome.dart';
import 'package:desafiofrontendweb/widgets/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
              BezierWidget(),
          TextIn().titulo("Posto Lorem Ipsum Dolor"),
          TextIn().texto("Rua:Sed Diam  Bairro:Nonummy Nibh "),
          TextIn().texto("Cidade:Euismod CEP 002298191"),
          SizedBox(
              height: MediaQuery.of(context).size.height*0.03
          ),
          Row(
            children: [
              Botao().botaoazul("CONFIRMA"),
              SizedBox(width: 20),
              Botao().botaobranco("BUSCAR NOVAMENTE"),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height*0.04,
          ),
              BezierWidget(),
          TextIn().titulo("Selecionar Bomba"),
              SizedBox(height:10),
          Row(children: [
            Botao().botaobomba("1"),
            SizedBox(width:5),
            Botao().botaobomba("2"),
            SizedBox(width: 5),
            Botao().botaobomba("3"),
            SizedBox(width: 5),
            Botao().botaobomba("4"),
            SizedBox(width:5),
            Botao().botaobomba("5"),
            SizedBox(width:5),
            Botao().botaobomba("6"),

          ]),
              SizedBox(
                  height: MediaQuery.of(context).size.height*0.12),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                //SizedBox(width:MediaQuery.of(context).size.width * 0.23),
                Botao().botaoazul("VERIFICAR BOMBA")
              ])
              
        ])
    );
  }
}
