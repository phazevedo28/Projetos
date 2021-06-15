import 'package:desefiofrontend/pages/page_1.dart';
import 'package:desefiofrontend/pages/page_2.dart';
import 'package:desefiofrontend/pages/page_3.dart';
import 'package:desefiofrontend/pages/page_4.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'gadgets/top_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              height: MediaQuery.of(context).padding.top,
              color: Colors.indigo[900]),
          TopPage(),
          _pages(context)
        ],
      ),
    );
  }

  _pages(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.81,
      width: MediaQuery.of(context).size.width * 1,
      color: Colors.white,
      child: PageView(
        children: [
          Page1(),
          Page2(),
          Page3(),
          Page4(),
        ],
      ),
    );
  }
}
