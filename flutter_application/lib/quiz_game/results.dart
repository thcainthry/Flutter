import 'package:flutter/material.dart';
import './quiz_help.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(this.icon, {Key? key}) : super(key: key) {
    for (Icon iconItem in icon) {
      if (iconItem.color == Colors.green) {
        playersAnswer.add('True');
      } else {
        playersAnswer.add('False');
      }
    }
  }

  QuizHelp quizHelp = QuizHelp();
  final List<Icon> icon;
  int questionIndex = 0;
  final List<String> playersAnswer = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Column(
                children: icon,
              ),
              Column(
                children: [
                  for (int questionIndex = 0;
                      questionIndex < icon.length;
                      questionIndex++)
                    Text(
                      quizHelp.getQuestionText(questionIndex),
                      style: const TextStyle(fontSize: 20),
                    ),
                ],
              ),
              Column(
                children: [
                  for (int questionIndex = 0;
                      questionIndex < icon.length;
                      questionIndex++)
                    Text(
                      playersAnswer[questionIndex],
                      style: const TextStyle(fontSize: 20),
                    ),
                ],
              ),
              Column(
                children: [
                  for (int questionIndex = 0;
                      questionIndex < icon.length;
                      questionIndex++)
                    Text(
                      quizHelp.getQuestionAnswer(questionIndex).toString(),
                      style: const TextStyle(fontSize: 20),
                    ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
