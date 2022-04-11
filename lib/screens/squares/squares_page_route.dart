import 'package:first_bootcamp/screens/squares/squares_page.dart';
import 'package:flutter/material.dart';

class SquaresPageRoute extends MaterialPageRoute<void> {
  SquaresPageRoute()
      :  super(builder: (_) {
          return const SquaresPage();
        });
}
