import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../models/category.dart';
import '../screens/category_page.dart';

class CategoryHeaderWidget extends StatelessWidget {
  final Category category;

  const CategoryHeaderWidget({
    Key? key,
    required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => GestureDetector(
    onTap: () => Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => CategoryPage(category: category),
    )),
    child: Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Colors.orange, Colors.purple],
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FaIcon(category.icon, color: Colors.orange, size: 36),
          const SizedBox(height: 12),
          Text(
            category.categoryName,
            style: const TextStyle(
              color: Colors.purple,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          )
        ],
      ),
    ),
  );
}