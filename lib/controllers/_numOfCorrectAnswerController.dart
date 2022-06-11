import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../data/test1.dart';
import '../models/question.dart';

class NumOfCorrectAnswerController extends GetxController{
  var _numOfCorrectAnswer=0.obs ;
  get numOfCorrectAnswer => _numOfCorrectAnswer.value;
  set numOfCorrectAnswer(newValue) => _numOfCorrectAnswer.value =newValue;

  late int _correctAns;
  int get correctAns => this._correctAns;

  late int _selectedAns;
  int get selectedAns => this._selectedAns;


/*void checkAns(Question question, int selectedIndex){
  _correctAns = question.answerOption;
  question.id = selectedIndex;
  if(_correctAns == )
}*/
}