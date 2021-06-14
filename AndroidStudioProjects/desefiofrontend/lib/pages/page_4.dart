import 'package:desefiofrontend/gadgets/botao.dart';
import 'package:desefiofrontend/gadgets/text.dart';
import 'package:desefiofrontend/utl/cliphome.dart';
import 'package:flutter/material.dart';

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
        child: Column(children: [
          _dadosverificacao(context),
          _btntext(),
          SizedBox(height: MediaQuery.of(context).size.height * 0.025),
          _relatar()
        ])
    );
  }

  _dadosverificacao(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      BezierWidget(),
      TextIn().titulo("Dados de Verificacao"),
      SizedBox(
        height: MediaQuery.of(context).size.height * 0.01,
      ),
      TextIn().texto("Dados Medicao:"),
      TextIn().texto("Integridade do Software:"),
      SizedBox(
        height: MediaQuery.of(context).size.height * 0.45,
      )
    ]);
  }

  _btntext() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Botao().botaotexto("DOWNLOAD", Icon(Icons.download)),
        SizedBox(width: 30),
        Botao().botaotexto("NOVA LEITURA", Icon(Icons.add_a_photo_outlined))
      ],
    );
  }

  _relatar() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Botao().botaoazulesc("RELATAR PROBLEMAS")]);
  }
}
