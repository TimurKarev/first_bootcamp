import 'package:first_bootcamp/assets/strings/strings_app.dart';
import 'package:flutter/material.dart';

class AsyncRequestPage extends StatelessWidget {
  const AsyncRequestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(StringsApp.mainScreenTaskItemFourthText),
      ),
    );
  }
}
