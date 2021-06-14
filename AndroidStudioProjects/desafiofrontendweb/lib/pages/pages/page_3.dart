import 'package:desafiofrontendweb/widgets/widgets/botao.dart';
import 'package:desafiofrontendweb/widgets/widgets/cliphome.dart';
import 'package:desafiofrontendweb/widgets/widgets/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {


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
    TextIn().titulo("Dados do Estabelecimento"),
    TextIn().texto("Nome:"),
    TextIn().texto("Localizacao:"),
            SizedBox(height: MediaQuery.of(context).size.height*0.08),
            BezierWidget(),
            TextIn().titulo("Dados do abastecimento"),
            TextIn().texto("N da bomba:"),
            TextIn().texto("Data:"),
            TextIn().texto("Hora:"),
            TextIn().texto("Volume Abastecido:"),
            TextIn().texto("Preco/Litro:"),
            TextIn().texto("Total a pagar:"),
            TextIn().texto("Localizacao:"),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.09,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
                children:[
              Botao().botaoazul("MAIS INFORMACOES")
            ])
    ])
    );
  }
}
