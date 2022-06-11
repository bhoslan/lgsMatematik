import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../data/trueFalseQuestions1.dart';

TrueFalseQuestions1 trueFalseQuestions = TrueFalseQuestions1();

class TrueFalsePage1 extends StatefulWidget {
  const TrueFalsePage1({Key? key}) : super(key: key);

  @override
  State<TrueFalsePage1> createState() => _TrueFalsePage1State();
}

class _TrueFalsePage1State extends State<TrueFalsePage1> {
  TrueFalseQuestions1 trueFalseQuestions = TrueFalseQuestions1();
  int questionNumber = 0;
  List<Icon> scoreKeeper = [];

  void checkAnswer(bool userPickedAnswer) {
    bool correctAnswer = trueFalseQuestions.getCorrectAnswer();
    setState(() {
      if (trueFalseQuestions.isFinished()) {
        Alert(
                context: context,
                title: 'Testi bitirdiniz! ',
                desc: 'Yeniden çözmek için tıklayınız.')
            .show();
        trueFalseQuestions.reset();
        scoreKeeper.clear();
      } else {
        if (userPickedAnswer == correctAnswer) {
          scoreKeeper.add(
            const Icon(
              Icons.check,
              color: Colors.green,
            ),
          );
        } else {
          scoreKeeper.add(
            const Icon(
              Icons.close,
              color: Colors.red,
            ),
          );
        }

        trueFalseQuestions.getNextQuestion();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){Get.back();}, icon: Icon(Icons.arrow_back),color: Colors.black,),
        backgroundColor: Colors.white54,
        elevation: 0,
      ),
    body :SafeArea(
      child: Container(
        color: Colors.white,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 6,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Center(
                    child: Text(
                      trueFalseQuestions.getQuestion(),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        decoration: TextDecoration.none,
                        color: Colors.black,
                        fontSize: 25.0,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.green)),
                      child: const Text(
                        'Doğru',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                        ),
                      ),
                      onPressed: () {
                        checkAnswer(true);
                      }),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.red)),
                      child: const Text(
                        'Yanlış',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                        ),
                      ),
                      onPressed: () {
                        checkAnswer(false);
                      }),
                ),
              ),
              Row(
                children: scoreKeeper,
              )
            ]),
      ),
    ),);
  }
}
