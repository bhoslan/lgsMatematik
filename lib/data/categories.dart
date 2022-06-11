import 'package:lgsmatematik/data/test1.dart';
import 'package:lgsmatematik/data/test2.dart';
import 'package:lgsmatematik/models/category.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


final categories = <Category>[
  Category(
      categoryName: "Çarpanlar ve Katlar",
      questions: test1,
      imageUrl: "assets/images/carpanlarKatlarImage.png",
      backgroundColor: Colors.white,
      icon: FontAwesomeIcons.question,
      description:"1. Ünite",
  ),
  Category(
    categoryName: "Üslü İfadeler",
    questions: test2,
    imageUrl: "assets/images/ustluIfadelerImage.png",
    backgroundColor: Colors.white,
    icon: FontAwesomeIcons.rocketchat,
    description:"2. Ünite",
  )
];