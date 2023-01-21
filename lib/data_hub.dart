import 'package:flutter/cupertino.dart';

class DataHub extends ChangeNotifier {
  int counts = 0;

  indexChanger(count) {Future.delayed(Duration(seconds: 3));
    counts = count + 1;
    notifyListeners();
  }
}
