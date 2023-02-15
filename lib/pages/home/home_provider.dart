import 'package:dars7/pages/second/second_page.dart';
import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  var _count = 0;

  HomeProvider() {
    print("Init");
    loadData();
  }

  Future<void> loadData() async {
    print("LoadData");
  }

  void increment(BuildContext context) async {
    _count++;
    notifyListeners();
    if (_count % 10 == 0) {
      final result = await Navigator.pushNamed(
        context,
        SecondPage.route,
        arguments: {"count": _count},
      );
      if (result != null) {
        _count = result as int;
        notifyListeners();
      }
    }
  }

  int get count => _count;
}
