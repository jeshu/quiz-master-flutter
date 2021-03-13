import 'question.dart';

class QuizBrain {

  List<Question> _questionBank = [
    Question(q:'The earth is the fourth planet from the sun.', a:false),
    Question(q:'The planet Venus has no moons.', a:true),
    Question(q:'Jupiter is composed mostly of iron.', a:false),
    Question(q:'The sun is a star of average size.', a:true),
    Question(q:'A lunar eclipse occurs when the sun passes.', a:false),
  ];
  int _questionNumber = 0;
  bool _isQuizOver = false;
  void nextQuestion() {
    if(_questionNumber < _questionBank.length-1) {
      _questionNumber++;
    } else {
      _isQuizOver = true;
    };
  }
  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    return _isQuizOver;
  }

  void reset() {
    _isQuizOver = false;
    _questionNumber = 0;
  }
}