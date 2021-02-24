import 'package:quizz_marvel/service/question_marvel.dart';

class Questions {
  var currentPositionQuestion = 0;

  final List<QuestionMarvel> questions = [
    QuestionMarvel(
        "Quando foi lançado o primeiro filme da Marvel?", "2009", "2008"),
    QuestionMarvel("Qual foi o ultimo filme da Marvel lançado nos cinemas?",
        "Vingadores Ultimato", "Viuva negra"),
    QuestionMarvel(
        "Qual a cidade onde se passa WandaVision?", "Westeview", "LA")
  ];

  String getCurrentQuestion() {
    return questions[currentPositionQuestion].name;
  }

  String getCurrentAswers() {
    return questions[currentPositionQuestion].aswers;
  }

  void nextQuestion() {
    if (currentPositionQuestion < questions.length - 1) {
      currentPositionQuestion++;
    }
  }

  bool isFinished() {
    return currentPositionQuestion == questions.length - 1;
  }

  String getFakeAswers() {
    return questions[currentPositionQuestion].fakeaswers;
  }
}
