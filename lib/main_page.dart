import 'package:first_bootcamp/screens/start_page/start_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'First bootcamp app',
      home: StartPage(),
    );
  }
}
