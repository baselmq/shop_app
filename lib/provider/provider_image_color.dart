import 'package:flutter/material.dart';

class ProviderImageColor with ChangeNotifier {
  late int index = 0;

  changeImage() {
    notifyListeners();
  }
}
