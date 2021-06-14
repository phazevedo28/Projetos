import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  GlobalKey _menuState = GlobalKey();

  Size get size => MediaQuery.of(context).size;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset("assets/images/inmetro-logo.png",
          width: 130, color: Colors.white),
      title: Center(
        child: Text(
          "MEDIDA INTELIGENTE ",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
      trailing: _right(),
    );
  }

  _right() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(
          "Admin",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        SizedBox(
          width: 20,
        ),
        InkWell(
          child: CircleAvatar(
            backgroundImage: NetworkImage("assets/images/login.jpeg"),
          ),
          onTap: () {
            // abre o popup menu
            dynamic state = _menuState.currentState;
            state.showButtonMenu();
          },
        ),
        PopupMenuButton<String>(
          key: _menuState,
          padding: EdgeInsets.zero,
          onSelected: (value) {},
          child: Icon(
            Icons.arrow_drop_down,
            size: 28,
            color: Colors.white,
          ),
          itemBuilder: (BuildContext context) => _getActions(),
        ),
      ],
    );
  }

  _getActions() {
    return <PopupMenuItem<String>>[
      PopupMenuItem<String>(
        value: "login",
        child: Text("login"),
      ),
      PopupMenuItem<String>(
        value: "logout",
        child: Text("Logout"),
      ),
    ];
  }
}
