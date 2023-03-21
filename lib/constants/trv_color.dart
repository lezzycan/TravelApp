
import 'package:flutter/material.dart';

class TrvColors {
  TrvColors._();
  static const Color textColor1 = Color(0xFF989acd);
  static const Color textColor2 = Color(0xFF878593);
  static const Color bigTextColor = Color(0xFF2e2e31);
  static const Color mainColor = Color(0xFF5d69b3);
  static const Color starColor = Color(0xFFe7bb4e);
  static const Color mainTextColor = Color(0xFFababad);
  static const Color buttonBackground = Color(0xFFf1f1f9);
  static const int _redPrimaryValue = 0xFFF44336;
  static const int _indigoPrimaryValue = 0xFF3F51B5;

  static const MaterialColor red = MaterialColor(
    _redPrimaryValue,
    <int, Color>{
       50: Color(0xFFFFEBEE),
      100: Color(0xFFFFCDD2),
      200: Color(0xFFEF9A9A),
      300: Color(0xFFE57373),
      400: Color(0xFFEF5350),
      500: Color(_redPrimaryValue),
      600: Color(0xFFE53935),
      700: Color(0xFFD32F2F),
      800: Color(0xFFC62828),
      900: Color(0xFFB71C1C),
    },
  );
  static const MaterialColor indigo = MaterialColor(
    _indigoPrimaryValue,
    <int, Color>{
       50: Color(0xFFE8EAF6),
      100: Color(0xFFC5CAE9),
      200: Color(0xFF9FA8DA),
      300: Color(0xFF7986CB),
      400: Color(0xFF5C6BC0),
      500: Color(_indigoPrimaryValue),
      600: Color(0xFF3949AB),
      700: Color(0xFF303F9F),
      800: Color(0xFF283593),
      900: Color(0xFF1A237E),
    },
  );

}
