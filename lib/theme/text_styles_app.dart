import 'package:flutter/widgets.dart';

const defaultFontFamily = 'Roboto';

class TextStylesApp {
  TextStylesApp._();

  static const headerTextStyle = TextStyle(
    fontWeight: FontWeight.w500,
    fontFamily: defaultFontFamily,
    fontSize: 22,
    shadows: [
      Shadow(
        color: Color.fromRGBO(0, 0, 0, 0.25),
        offset: Offset(0, 4),
        blurRadius: 10,
      ),
    ],
  );
  static const normalTextStyle = TextStyle(
    fontWeight: FontWeight.w400,
    fontFamily: defaultFontFamily,
    fontSize: 16,
  );
}

extension ProjectTextStyleX on TextStyle {
  TextStyle andSize(double size) => copyWith(fontSize: size);
  TextStyle andWeight(FontWeight weight) => copyWith(fontWeight: weight);
  TextStyle andColor(Color color) => copyWith(color: color);
  TextStyle andHeight(double height) => copyWith(height: height);
}
