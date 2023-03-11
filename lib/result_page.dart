import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage(
      {super.key, required this.score, required this.numberOfQuestions});
  final int score;
  final int numberOfQuestions;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Center(
            child: Text("Quiz Flutter & Dart"),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  "Resultado",
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "Você acertou\n$score de $numberOfQuestions\nperguntas",
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(20),
                    minimumSize: const Size(160, 50),
                  ),
                  child: const Text(
                    "Jogar novamente",
                    style: TextStyle(fontSize: 30),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
