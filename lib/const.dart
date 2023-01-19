import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class mytheam extends GetxController {
  static Color color1 = Colors.black;
  static TextStyle t1 = const TextStyle(
    color: Colors.amberAccent,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );
  bool isSelcted = true;
  void ch() {
    isSelcted = !isSelcted;
    update();
  }
}
