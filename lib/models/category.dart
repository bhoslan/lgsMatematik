import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:lgsmatematik/models/question.dart';

class Category{
  final String categoryName;
  final String description;
  final Color backgroundColor;
  final IconData icon;
  final List<Question> questions;
  final String imageUrl;
  Category({
    required this.categoryName,
    required this.questions,
    required this.imageUrl,
    this.description="",
    this.icon=FontAwesomeIcons.question,
    this.backgroundColor=Colors.white,
  }
      );
}