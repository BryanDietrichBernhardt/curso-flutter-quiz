import 'package:flutter/material.dart';
import 'package:quiz/quiz_page.dart';

class ResultPageArgs {
  final int score;
  final int numberOfQuestions;

  ResultPageArgs(this.score, this.numberOfQuestions);
}

class ResultPage extends StatelessWidget {
  static const routeName = 'result';
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as ResultPageArgs;

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
                  "Você acertou\n${args.score} de ${args.numberOfQuestions}\nperguntas",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'quiz');
                  },
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
