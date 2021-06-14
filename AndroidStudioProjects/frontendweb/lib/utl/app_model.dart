import 'package:flutter/material.dart';
import 'package:frontendweb/pages/page_1.dart';

class AppModel extends ChangeNotifier {
  Widget page = Page1();

  AppModel() {
    page = Page1();
  }

  setPage(Widget page) {
    this.page = page;

    notifyListeners();
  }
}
