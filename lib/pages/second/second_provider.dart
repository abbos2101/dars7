import 'package:dars7/pages/second/second_page.dart';
import 'package:flutter/material.dart';

class SecondProvider extends ChangeNotifier {
  var _count = 0;

  void setCount(int count) {
    _count = count;
    notifyListeners();
  }

  void increment(BuildContext context) {
    _count++;
    notifyListeners();
    if (_count % 10 == 0) {
      Navigator.pop(context, _count);
    }
  }

  int get count => _count;
}
