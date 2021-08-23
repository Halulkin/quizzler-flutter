import 'question.dart';

class QuizBrain {
  int questionNumber = 0;

  List<Question> _questions = [
    Question("You can lead a cow down stairs but not up stairs.", true),
    Question("Approximately one quarter of human bones are in the feet.", true),
    Question("A slug\'s blood is green.", true)
  ];

  void nextQuestion() {
    if (questionNumber < 2) {
      questionNumber++;
    } else {
      questionNumber = 0;
    }
    print(questionNumber);
  }

  String getQuestionText() {
    return _questions[questionNumber].question;
  }

  bool getQuestionAnswer() {
    return _questions[questionNumber].answer;
  }
}
