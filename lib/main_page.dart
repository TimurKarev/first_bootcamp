import 'package:first_bootcamp/start_page/start_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First bootcamp app',
      theme: ThemeData(
        primaryColor: Colors.blue[400],
        fontFamily: "Roboto",
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w500,
            color: Colors.black,
            shadows: [
              Shadow(
                color: Color(0xe40000000),
                offset: Offset(0.0, 4.0),
                blurRadius: 4.0,
              ),
            ],
          ),
          headline2: TextStyle(
            fontSize: 16.0,
            color: Colors.black,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      home: const StartPage(),
    );
  }
}
