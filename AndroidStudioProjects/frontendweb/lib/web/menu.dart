import 'package:flutter/material.dart';

import 'package:frontendweb/pages/page_1.dart';
import 'package:frontendweb/pages/page_2.dart';
import 'package:frontendweb/pages/page_3.dart';
import 'package:frontendweb/pages/page_4.dart';
import 'package:provider/provider.dart';

import '../utl/app_model.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        _itemMenu("Home", Icons.home, Page1()),
        _itemMenu("Verificar Bomba", Icons.where_to_vote_outlined, Page2()),
        _itemMenu("Mais informacoes", Icons.add, Page3()),
        _itemMenu("Relatar problemas", Icons.warning_outlined, Page4())
      ],
    );
  }

  _itemMenu(String title, IconData icon, Widget page) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          AppModel app = Provider.of<AppModel>(context, listen: false);
          app.setPage(page);
        },
        child: ListTile(
          leading: Icon(icon),
          title: Text(title),
        ),
      ),
    );
  }
}
