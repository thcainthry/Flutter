import 'package:flutter/material.dart';
import './quiz_help.dart';
import './results.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quize Game App'),
          centerTitle: true,
        ),
        body: const QuizPage(),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  QuizHelp quizHelp = QuizHelp();
  int questionIndex = 0;
  List<Icon> icons = [];
  List<String> playersAnswer = [];

  void checkAnswer(bool userAnswer) {
    int totalQuestions = quizHelp.getTotalQuestions();
    setState(() {
      if (icons.length < totalQuestions) {
        if (userAnswer == quizHelp.getQuestionAnswer(questionIndex)) {
          icons.add(const Icon(
            Icons.check,
            color: Colors.green,
          ));
          playersAnswer.add('True');
        } else {
          icons.add(const Icon(Icons.close, color: Colors.red));
          playersAnswer.add('False');
        }
      }
      if (questionIndex < totalQuestions - 1) {
        questionIndex++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(quizHelp.getQuestionText(questionIndex),
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )),
            const SizedBox(
              height: 20,
            ),
            Text(
              "${questionIndex + 1}/5",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(175, 50),
                textStyle: const TextStyle(
                  fontSize: 20,
                ),
                backgroundColor: Colors.green,
              ),
              onPressed: () {
                checkAnswer(true);
              },
              child: const Text("True"),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(175, 50),
                  textStyle: const TextStyle(
                    fontSize: 20,
                  ),
                  backgroundColor: Colors.red,
                ),
                onPressed: () {
                  checkAnswer(false);
                },
                child: const Text("False")),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(175, 50),
                textStyle: const TextStyle(
                  fontSize: 20,
                ),
                backgroundColor: Colors.green,
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) {
                      return ResultsPage(
                        icons,
                      );
                    },
                  ),
                );
              },
              child: const Text("Results"),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: icons,
            )
          ],
        ));
  }
}
