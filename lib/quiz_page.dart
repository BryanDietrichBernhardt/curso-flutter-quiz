import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    List quiz = [
      {
        "question": "Qual a linguagem do Flutter?",
        "options": [
          "JS",
          "Swift",
          "Dart",
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
                child: Text("Pergunta 1 de 10"),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("Pergunta"),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(20),
                  minimumSize: const Size(250, 50),
                ),
                child: const Text(
                  "Resposta 1",
                  style: TextStyle(fontSize: 22),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(20),
                  minimumSize: const Size(250, 50),
                ),
                child: const Text(
                  "Resposta 2",
                  style: TextStyle(fontSize: 22),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(20),
                  minimumSize: const Size(250, 50),
                ),
                child: const Text(
                  "Resposta 3",
                  style: TextStyle(fontSize: 22),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(20),
                  minimumSize: const Size(250, 50),
                ),
                child: const Text(
                  "Resposta 4",
                  style: TextStyle(fontSize: 22),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
