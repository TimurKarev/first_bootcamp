import 'package:first_bootcamp/screens/codelab/codelab_page.dart';
import 'package:flutter/material.dart';

class CodelabRoute extends MaterialPageRoute<void> {
  CodelabRoute()
      : super(builder: (_) {
          return const CodelabPage();
        });
}
