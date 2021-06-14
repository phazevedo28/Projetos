import 'package:desafiofrontendweb/app_model.dart';
import 'package:desafiofrontendweb/pages/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => AppModel(),)],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
        ),
        home:HomePage(),
      ),
    );
  }
}

/*Consider applying a flex factor (e.g. using an Expanded widget)
to force the children of the RenderFlex to fit within the available
space instead of being sized to their natural size.
This is considered an error condition because it indicates that
there is content that cannot be seen. If the content is legitimately
bigger than the available space, consider clipping it with a ClipRect
widget before putting it in the flex, or using a scrollable container
rather than a Flex, like a ListView.*/