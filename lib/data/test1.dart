import 'package:lgsmatematik/models/option.dart';
import 'package:lgsmatematik/models/question.dart';

final test1 = [
  Question(
    text: "12 sayısının çarpanları kaç tanedir?",
    solution: "1,2,3,4,6 ve 12 olmak üzere 6 tanedir.",
    options: [
      Option(code: "A-", text: "2", answerOption: 1),
      Option(code: "B-", text: "3", answerOption: 2),
      Option(code: "C-", text: "4", answerOption: 3),
      Option(code: "D-", text: "6", answerOption: 4),
    ],
    answerOption: 4,
    id: 1,
  ),
  Question(
    text: "72 ve 60 sayılarının doğal sayı çarpanlarının kaç tanesi ortaktır?",
    solution: "En büyük ortak bölenleri 12'dir. 12'nin 6 tane böleni vardır.",
    options: [
      Option(code: "A-", text: "6", answerOption: 1),
      Option(code: "B-", text: "9", answerOption: 2),
      Option(code: "C-", text: "12", answerOption: 3),
      Option(code: "D-", text: "4", answerOption: 4),
    ],
    answerOption: 1,
    id: 2,
  ),
  Question(
    text: "240 sayısının asal çarpanlarının toplamı kaçtır?",
    solution: "2+3+5=10",
    options: [
      Option(code: "A-", text: "5", answerOption: 1),
      Option(code: "B-", text: "10", answerOption: 2),
      Option(code: "C-", text: "12", answerOption: 3),
      Option(code: "D-", text: "20", answerOption: 4),
    ],
    answerOption: 2,
    id: 3,
  ),
  Question(
    text:
        "B7 sayısı iki basamaklı bir asal sayı olduğuna göre B yerine kaç rakam yazılabilir?",
    solution: "{1,3,4,6,9} olmak üzere 5 rakam yazılabilir.",
    options: [
      Option(code: "A-", text: "5", answerOption: 1),
      Option(code: "B-", text: "6", answerOption: 2),
      Option(code: "C-", text: "7", answerOption: 3),
      Option(code: "D-", text: "8", answerOption: 4),
    ],
    answerOption: 1,
    id: 4,
  ),
  Question(
    text: "Asal çarpanları 2 ve 5 olan 100'den küçük kaç sayı vardır??",
    solution: "{10,20,40,50,80} olmak üzere 5 sayı vardır.",
    options: [
      Option(code: "A-", text: "5", answerOption: 1),
      Option(code: "B-", text: "6", answerOption: 2),
      Option(code: "C-", text: "7", answerOption: 3),
      Option(code: "D-", text: "8", answerOption: 4),
    ],
    answerOption: 1,
    id: 5,
  ),
];
