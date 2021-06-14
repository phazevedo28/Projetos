import 'package:desefiofrontend/gadgets/botao.dart';
import 'package:desefiofrontend/gadgets/text.dart';
import 'package:desefiofrontend/utl/cliphome.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
        child: Column(children: [
          _endereco(context),
          _selecionarbomba(context),
          _verificarbomba()
        ])
    );
  }

  _endereco(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      BezierWidget(),
      TextIn().titulo("Posto Lorem Ipsum Dolor"),
      SizedBox(
        height: MediaQuery.of(context).size.height * 0.01,
      ),
      TextIn().texto("Rua:Sed Diam  Bairro:Nonummy Nibh "),
      TextIn().texto("Cidade:Euismod CEP 002298191"),
      SizedBox(
        height: MediaQuery.of(context).size.height * 0.02,
      ),
      Row(children: [
        Botao().botaoazul("CONFIRMA"),
        SizedBox(width: 20),
        Botao().botaobranco("BUSCAR NOVAMENTE"),
      ]),
      SizedBox(
        height: MediaQuery.of(context).size.height * 0.04,
      )
    ]);
  }

  _selecionarbomba(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      BezierWidget(),
      TextIn().titulo("Selecionar Bomba"),
      SizedBox(
        height: MediaQuery.of(context).size.height * 0.01,
      ),
      Row(children: [
        Botao().botaobomba("1"),
        SizedBox(width: 5),
        Botao().botaobomba("2"),
        SizedBox(width: 5),
        Botao().botaobomba("3"),
        SizedBox(width: 5),
        Botao().botaobomba("4"),
        SizedBox(width: 5),
        Botao().botaobomba("5"),
        SizedBox(width: 5),
        Botao().botaobomba("6"),
      ]),
      SizedBox(height: MediaQuery.of(context).size.height * 0.13)
    ]);
  }

  _verificarbomba() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      //SizedBox(width:MediaQuery.of(context).size.width * 0.23),
      Botao().botaoazul("VERIFICAR BOMBA")
    ]);
  }
}
