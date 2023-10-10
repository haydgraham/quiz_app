import 'question.dart';

class QuizBrain {
  int _questionNum = 0;

  final List<Question> _quizBank = [
    Question(q:"Question 1", a:true),
    Question(q:"Question 2", a:false),
    Question(q:"Question 3", a:true),
    Question(q:"Question 4", a:false),
    Question(q:"Question 5", a:true),
  ];

  void updateQuestion() {
    if (_questionNum < _quizBank.length - 1) {
      _questionNum += 1;
    }
    else {
      _questionNum = 0;
    }
  }

  Question getQuestion() {
    return _quizBank[_questionNum];
  }
}
