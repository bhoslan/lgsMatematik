import 'option.dart';

class Question{
  late final int id;
  final String text;
  final String solution;
  final List<Option> options;
  bool isLocked;
  int answerOption;
  Option? selectedOption= Option(code: "code", text: "text", answerOption: 0); //= Option(code: "code", text: "text", isCorrect: false);


  Question({
    required this.id,
    required this.text,
    required this.solution,
    required this.options,
    this.isLocked = false,
    this.selectedOption ,
    required this.answerOption,
});
}