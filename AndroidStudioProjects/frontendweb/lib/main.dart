import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'utl/app_model.dart';
import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AppModel(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: _theme(),
        home: HomePage(),
      ),
    );
  }

  _theme() {
    return ThemeData(
      primarySwatch: Colors.blue,
      scaffoldBackgroundColor: Colors.white,
      splashColor: Colors.blue,
      hoverColor: Colors.blue[100],
      textTheme: TextTheme(),
    );
  }
}
