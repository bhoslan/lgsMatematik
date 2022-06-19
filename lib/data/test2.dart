import 'package:lgsmatematik/models/option.dart';
import 'package:lgsmatematik/models/question.dart';



final test2 = [
  Question(
    text: ("100'den küçük tam kare olan kaç doğal sayı vardır?"),
    solution: "{0,1,...,81}",
    options: [
      Option(code: "A-", text: "10", answerOption: 1),
      Option(code: "B-", text: "9", answerOption: 2),
      Option(code: "C-", text: "8", answerOption: 3),
      Option(code: "D-", text: "7", answerOption: 4),
    ],
    answerOption: 1,
    id:1,
  ),
  Question(

    text: "Aşağıdakilerden hangisi 275 sayısına eşittir?",
    solution: "0,0275 . 1000 = 275 ",
    options: [
      Option(code: "A-", text: "0,0275 . 10^2", answerOption: 1),
      Option(code: "B-", text: "0,0275 . 10^3", answerOption: 2),
      Option(code: "C-", text: "0,0275 . 10^4", answerOption: 3),
      Option(code: "D-", text: "0,0275 . 10^5", answerOption: 4),
    ],
    answerOption: 3,
    id:2,
  ),
  Question(
    text: "0,00114 = 11,4 . 10^a olduğuna göre a kaçtır?",
    solution: "a=-4",
    options: [
      Option(code: "A-", text: "-4", answerOption: 1),
      Option(code: "B-", text: "-5", answerOption: 2),
      Option(code: "C-", text: "-6", answerOption: 3),
      Option(code: "D-", text: "-7", answerOption: 4),
    ],
    answerOption: 1,
    id:3,
  ),
  Question(
    text: "B6 sayısı bir rakamın kuvveti olduğuna göre B yerine kaç rakam yazılabilir?",
    solution: "B={1,3} olabilir.",
    options: [
      Option(code: "A-", text: "2", answerOption: 1),
      Option(code: "B-", text: "3", answerOption: 2),
      Option(code: "C-", text: "4", answerOption: 3),
      Option(code: "D-", text: "5", answerOption: 4),
    ],
    answerOption: 1,
    id:4,
  ),
  Question(
    text: "27,03 = (2.10^a)+(7.10^b)+(3.10^c) a.b.c kaçtır?",
    solution: "a=1, b=0, c=-2",
    options: [
      Option(code: "A-", text: "0", answerOption: 1),
      Option(code: "B-", text: "6", answerOption: 2),
      Option(code: "C-", text: "-6", answerOption: 3),
      Option(code: "D-", text: "-2", answerOption: 4),
    ],
    answerOption: 1,
    id:5,
  ),
];
