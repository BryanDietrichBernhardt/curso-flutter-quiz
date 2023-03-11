import 'package:flutter/material.dart';
import 'home_page.dart';
import 'quiz_page.dart';
import 'result_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        'quiz': (context) => Quiz(),
        ResultPage.routeName: (context) => ResultPage()
      },
    );
  }
}
