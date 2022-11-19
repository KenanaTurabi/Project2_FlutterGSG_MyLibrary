import 'package:flutter/foundation.dart';

class MyLibraryProvider extends ChangeNotifier {
  bool isDarkMode = false;
  changeMode() {
    isDarkMode = !isDarkMode;
    notifyListeners();
  }
}
