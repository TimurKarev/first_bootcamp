import 'package:first_bootcamp/screens/async_request/async_request.dart';
import 'package:flutter/material.dart';

class AsyncRequestRoute extends MaterialPageRoute<void> {
  AsyncRequestRoute()
      : super(builder: (_) {
          return const AsyncRequestPage();
        });
}
