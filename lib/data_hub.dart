import 'package:flutter/cupertino.dart';

class DataHub extends ChangeNotifier {
  int counts = 0;

  indexChanger(count) {
    counts = count + 1;
    notifyListeners();
  }
}
