import 'package:first_bootcamp/screens/async_request/async_request.dart';
import 'package:flutter/material.dart';

class CodelabRoute extends MaterialPageRoute<void> {
  CodelabRoute()
      : super(builder: (_) {
          return const AsyncRequestPage();
        });
}
