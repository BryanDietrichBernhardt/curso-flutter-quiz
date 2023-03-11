import 'package:flutter/material.dart';
import 'package:quiz/result_page.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  int questionNumber = 1;
  int score = 0;
  @override
  Widget build(BuildContext context) {
    List quiz = [
      {
        "question": "Qual a linguagem do Flutter?",
        "options": [
          "Dart",
          "Swift",
          "JS",
          "Kotlin",
        ],
        "response": 1
      }
    ];

    quiz.add({
      "question": "O que é o Flutter?",
      "options": [
        "Linguagem",
        "Aplicativo",
        "SDK",
        "IDE",
      ],
      "response": 3
    });

    void checkResponse(int responseNumber) {
      setState(() {
        if (quiz[questionNumber - 1]['response'] == responseNumber) {
          score++;
        }
        if (questionNumber == quiz.length) {
          Navigator.pushNamed(
            context,
            'result',
            arguments: ResultPageArgs(
              score,
              quiz.length,
            ),
          );
        } else {
          questionNumber++;
        }
      });
    }

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
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Text("Pergunta $questionNumber de ${quiz.length}"),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "${quiz[questionNumber - 1]["question"]}",
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  checkResponse(1);
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(20),
                  minimumSize: const Size(double.infinity, 50),
                ),
                child: Text(
                  quiz[questionNumber - 1]['options'][0],
                  style: const TextStyle(
                    fontSize: 22,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  checkResponse(2);
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(20),
                  minimumSize: const Size(double.infinity, 50),
                ),
                child: Text(
                  quiz[questionNumber - 1]['options'][1],
                  style: const TextStyle(fontSize: 22),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  checkResponse(3);
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(20),
                  minimumSize: const Size(double.infinity, 50),
                ),
                child: Text(
                  quiz[questionNumber - 1]['options'][2],
                  style: const TextStyle(fontSize: 22),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  checkResponse(4);
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(20),
                  minimumSize: const Size(double.infinity, 50),
                ),
                child: Text(
                  quiz[questionNumber - 1]['options'][3],
                  style: const TextStyle(fontSize: 22),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
