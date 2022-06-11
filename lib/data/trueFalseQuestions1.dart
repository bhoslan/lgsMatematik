import '../models/true_false_question.dart';

class TrueFalseQuestions1 {
  int _questionNumber = 0;
  List<TrueFalseQuestion> _questions = [
    TrueFalseQuestion("En küçük asal sayı 2'dir.", true),
    TrueFalseQuestion("Bir sayının çarpanları o sayının bölenleridir.", true),
    TrueFalseQuestion(
        "Aralarında asal olan iki sayının EBOB'u büyük olana eşittir.", false),
    TrueFalseQuestion(
        "Birbirinin katı olan sayılarda küçük olan sayı EBOB, büyük olan sayı EKOK'tur.",
        true),
    TrueFalseQuestion("İki basamaklı 21 tane asal sayı vardır.", false),
  ];

  String getQuestion() {

    return _questions[_questionNumber].question;

    //duration ekle
  }

  void getNextQuestion() {
    if (_questionNumber < _questions.length - 1) {
      _questionNumber++;
    }
  }

  bool getCorrectAnswer() {
    return _questions[_questionNumber].answer;
  }

  bool isFinished() {

    if (_questionNumber >= _questions.length - 1)
      {
        Future.delayed(const Duration(seconds: 10));
        return true;
    }
    else
      return false;
  }

  void reset() {

    _questionNumber = 0;

  }


}
