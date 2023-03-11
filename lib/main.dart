import 'package:flutter/material.dart';
import 'home_page.dart';
import 'quiz_page.dart';
import 'result_page.dart';

void main() {
  runApp(const ResultPage(
    score: 2,
    numberOfQuestions: 2,
  ));
}
