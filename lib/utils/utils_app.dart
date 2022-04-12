import 'package:flutter/widgets.dart';
import 'dart:math' as math;

class UtilsApp {
  UtilsApp._();

  static Color getRandomColor() =>
      Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
}
