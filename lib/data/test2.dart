import 'package:lgsmatematik/models/option.dart';
import 'package:lgsmatematik/models/question.dart';
import 'package:flutter_tex/flutter_tex.dart';

final test2 = [
  Question(
    text: "7^2 kaçtır?",
    solution: "7*7=49",
    options: [
      Option(code: "A-", text: "25", isCorrect: false),
      Option(code: "B-", text: "36", isCorrect: false),
      Option(code: "C-", text: "49", isCorrect: true),
      Option(code: "D-", text: "64", isCorrect: false),
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
