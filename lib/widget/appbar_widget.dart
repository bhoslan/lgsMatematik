import 'package:flutter/material.dart';

AppBar buildAppBar(BuildContext context){
  return AppBar(
    leading: Builder(
      builder: (BuildContext context) {
        return IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.black,
        );
      },
    ),
    actions: [
      IconButton(onPressed: (){}, icon: Icon(Icons.dark_mode))
    ],
    backgroundColor: Colors.transparent,
    elevation: 0,
  );
}