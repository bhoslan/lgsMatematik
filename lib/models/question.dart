import 'option.dart';

class Question{
  final String text;
  final String solution;
  final List<Option> options;
  bool isLocked;
  Option? selectedOption= Option(code: "code", text: "text", isCorrect: false); //= Option(code: "code", text: "text", isCorrect: false);


  Question({
    required this.text,
    required this.solution,
    required this.options,
    this.isLocked = false,
    this.selectedOption ,
});
}