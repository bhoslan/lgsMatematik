import 'package:flutter/material.dart';

import '../data/user.dart';
import '../utils/user_preferences.dart';

class TextFieldWidget extends StatefulWidget {

  final int maxLines;
  final String label;
  final String text;
  final ValueChanged<String> onSubmitted;
   TextFieldWidget({
    Key? key,
     this.maxLines=1,
    required this.label,
    required this.text,
    required this.onSubmitted,
  }) : super(key: key);

  @override

  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  User user = UserPreferences.myUser;
  late final TextEditingController controller;

  @override
  void initState() {
    super.initState();

    controller = TextEditingController(text: widget.text);
  }
@override
void dispose(){
  controller.dispose();
  super.dispose();

}
  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        widget.label,
        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
      ),
      SizedBox(height: 8,),
      TextField(
        onSubmitted: (value){},
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12)
          )
        ),
        maxLines: widget.maxLines,
      )
    ],
  );
}
