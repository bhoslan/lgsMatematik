import 'package:lgsmatematik/models/option.dart';
import 'package:lgsmatematik/models/question.dart';

bool _correctAnswer=false;
int _numOfCorrectAnswer = 0;

final test1 = [
  Question(
      text: "12 sayısının asal çarpanları kaç tanedir?",
      solution: "1,2,3,4,6 ve 12 olmak üzere 6 tanedir.",
      options: [
        Option(code: "A-", text: "2", isCorrect: false),
        Option(code: "B-", text: "3", isCorrect: false),
        Option(code: "C-", text: "4", isCorrect: false),
        Option(code: "D-", text: "6", isCorrect: true),
      ],
      ),
  Question(
    text: "72 ve 60 sayılarının doğal sayı çarpanlarının kaç tanesi ortaktır?",
    solution: "En büyük ortak bölenleri 12'dir. 12'nin 6 tane böleni vardır.",
    options: [
      Option(code: "A-", text: "6", isCorrect: true),
      Option(code: "B-", text: "9", isCorrect: false),
      Option(code: "C-", text: "12", isCorrect: false),
      Option(code: "D-", text: "4", isCorrect: false),
    ],
  ),
  Question(
    text: "240 sayısının asal çarpanlarının toplamı kaçtır?",
    solution: "2+3+5=10",
    options: [
      Option(code: "A-", text: "5", isCorrect: false),
      Option(code: "B-", text: "10", isCorrect: true),
      Option(code: "C-", text: "12", isCorrect: false),
      Option(code: "D-", text: "20", isCorrect: false),
    ],
  ),
  Question(
    text: "B7 sayısı iki basamaklı bir asal sayı olduğuna göre B yerine kaç rakam yazılabilir?",
    solution: "{1,3,4,6,9} olmak üzere 5 rakam yazılabilir.",
    options: [
      Option(code: "A-", text: "5", isCorrect: true),
      Option(code: "B-", text: "6", isCorrect: false),
      Option(code: "C-", text: "7", isCorrect: false),
      Option(code: "D-", text: "8", isCorrect: false),
    ],
  ),
  Question(
    text: "Asal çarpanları 2 ve 5 olan 100'den küçük kaç sayı vardır??",
    solution: "{10,20,40,50,80} olmak üzere 5 sayı vardır.",
    options: [
      Option(code: "A-", text: "5", isCorrect: true),
      Option(code: "B-", text: "6", isCorrect: false),
      Option(code: "C-", text: "7", isCorrect: false),
      Option(code: "D-", text: "8", isCorrect: false),
    ],
  ),
];

//int dogruSayisi(){
  //if(test1[0].selectedOption == test1[0].)
//}