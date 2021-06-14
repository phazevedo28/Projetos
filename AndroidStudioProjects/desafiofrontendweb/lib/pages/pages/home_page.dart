
import 'package:desafiofrontendweb/app_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Size get size => MediaQuery.of(context).size;

  bool get showDrawer => size.width <= 760;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Web - ${size.width}/${size.height}"),
        automaticallyImplyLeading: showDrawer,

      ),
      body: _body(),
      drawer: Drawer(
        child: _menu(),
      ),
    );
  }

  _body() {
    return showDrawer  ? _right() : Row(
      children: <Widget>[
        _menu(),
        _right(),
      ],
    );
  }

  _menu() {
    return Container(
      width: 230,
      color: Colors.grey[100],
      child: ListView(
        children: <Widget>[
          ListTile(
            leading: Image.asset("assets/images/inmetro-logo.png",
                width: 115,
            ),
          ),
          _itemMenu(),
          _itemMenu(),
          _itemMenu(),
          _itemMenu(),

        ],
      ),
    );
  }

  _itemMenu() {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        splashColor: Colors.indigo[900],
        hoverColor: Colors.blue,
        onTap: (){
          AppModel app = Provider.of<AppModel>(context, listen: false);
          app.setPage(HomePage());

        },
        child: ListTile(
              leading: Icon(Icons.star),
              title: Text("Item 1"),
            ),
      ),
    );
  }

  _right() {

    AppModel app = Provider.of<AppModel>(context);

    return Container(
      width: showDrawer ? size.width : size.width - 230,
      color: Colors.white,
    );
  }
}
