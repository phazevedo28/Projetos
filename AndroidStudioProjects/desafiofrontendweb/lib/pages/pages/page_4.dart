import 'package:desafiofrontendweb/widgets/widgets/botao.dart';
import 'package:desafiofrontendweb/widgets/widgets/cliphome.dart';
import 'package:desafiofrontendweb/widgets/widgets/text.dart';
import 'package:flutter/material.dart';

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

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
    TextIn().titulo("Dados de Verificacao"),
    TextIn().texto("Dados Medicao:"),
    TextIn().texto("Integridade do Software:"),
          SizedBox(
            height:MediaQuery.of(context).size.height * 0.35 ,
          ),
          Row( mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Botao().botaotexto("DOWNLOAD", Icon(Icons.download)),
              SizedBox(width:30),
              Botao().botaotexto("NOVA LEITURA", Icon(Icons.add_a_photo_outlined))
              
            ],
          ),
          Row( mainAxisAlignment: MainAxisAlignment.center,
            children:[
          Botao().botaoazulesc("RELATAR PROBLEMAS")])
      ])
    );
  }
}
