import 'question.dart';

class QuizHelp {
  String? question;
  bool? answer;

  QuizHelp({this.question, this.answer});

  final List<Question> _questions = [
    Question(
      questionText: " Flutter is a programming language.",
      questionAnswer: false,
    ),
    Question(
      questionText: "Flutter applications can only be run on Android devices.",
      questionAnswer: false,
    ),
    Question(
      questionText: "Flutter widgets are immutable and stateless.",
      questionAnswer: true,
    ),
    Question(
      questionText: "Flutter is mainly used for developing web applications.",
      questionAnswer: false,
    ),
    Question(
      questionText: "Flutter apps can only be developed using Android Studio",
      questionAnswer: false,
    ),
  ];

  String getQuestionText(int questionIndex) {
    return _questions[questionIndex].questionText;
  }

  bool getQuestionAnswer(int questionIndex) {
    return _questions[questionIndex].questionAnswer;
  }

  int getTotalQuestions() {
    return _questions.length;
  }
}
