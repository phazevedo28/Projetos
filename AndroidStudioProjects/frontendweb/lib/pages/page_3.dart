import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:frontendweb/gadgets/botao.dart';
import 'package:frontendweb/gadgets/text.dart';
import 'package:frontendweb/utl/cliphome.dart';


class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
        child: Column(children: [
          _dadoestabelecimento(context),
          _dadosabastecimento(context),
          _info()
        ])
    );
  }

  _dadoestabelecimento(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      BezierWidget(),
      TextIn().titulo("Dados do Estabelecimento"),
      SizedBox(
        height: MediaQuery.of(context).size.height * 0.01,
      ),
      TextIn().texto("Nome:"),
      TextIn().texto("Localizacao:"),
      SizedBox(height: MediaQuery.of(context).size.height * 0.08),
    ]);
  }

  _dadosabastecimento(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      BezierWidget(),
      TextIn().titulo("Dados do abastecimento"),
      SizedBox(
        height: MediaQuery.of(context).size.height * 0.01,
      ),
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
    ]);
  }

  _info() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Botao().botaoazul("MAIS INFORMACOES")]);
  }
}
