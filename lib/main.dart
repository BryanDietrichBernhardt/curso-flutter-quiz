import 'package:flutter/material.dart';
import 'home_page.dart';
import 'quiz_page.dart';
import 'result_page.dart';
import 'quiz_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    quiz.shuffle();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        'quiz': (context) => Quiz(
              quiz: quiz,
            ),
        ResultPage.routeName: (context) => ResultPage()
      },
    );
  }
}
