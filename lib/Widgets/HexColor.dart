import 'package:flutter/material.dart';

class HexColor extends Color {
  static int _getHexColor(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF$hexColor';
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String theHexColor) : super(_getHexColor(theHexColor));
}
