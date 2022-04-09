import 'package:first_bootcamp/screens/colored_list/colored_list_page.dart';
import 'package:flutter/material.dart';

class ColoredListRoute extends MaterialPageRoute<void> {
  ColoredListRoute()
      : super(builder: (_) {
          return const ColoredListPage();
        });
}
