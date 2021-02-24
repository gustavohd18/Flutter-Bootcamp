import 'package:flutter_test/flutter_test.dart';
import 'package:quizz_marvel/service/questions.dart';

void main() {
  group('Questions', () {
    test('Should get first Question when start class', () {
      final Questions questions = new Questions();
      final String firstQuestion = questions.getCurrentQuestion();

      expect(firstQuestion, "Quando foi lançado o primeiro filme da Marvel?");
    });

    test('Should get first Question Asnwers when start class', () {
      final Questions questions = new Questions();
      final String firstQuestionAswers = questions.getCurrentAswers();

      expect(firstQuestionAswers, "2009");
    });

    test('Should set next question', () {
      final Questions questions = new Questions();

      questions.nextQuestion();

      questions.nextQuestion();

      final String nextQuestion = questions.getCurrentQuestion();

      expect(nextQuestion, "Qual foi o ultimo filme da Marvel lançado nos cinemas?");
    });

    test('Should set is finished true', () {
      final Questions questions = new Questions();

      questions.nextQuestion();

      questions.nextQuestion();

      final bool isFinished = questions.isFinished();

      expect(isFinished, true);
    });

    test('Should set is finished false', () {
      final Questions questions = new Questions();

      final bool isFinished = questions.isFinished();

      expect(isFinished, false);
    });
  });
}
