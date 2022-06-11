import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../data/categories.dart';
import '../widget/category_detail_widget.dart';
import '../widget/category_header_widget.dart';
import 'category_page.dart';

class TestsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: ListView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(16),
          children: [
            const SizedBox(height: 8),
            buildCategories(),
            const SizedBox(height: 8),
            //buildPopular(context),
          ],
        ),
      );

  Widget buildCategories() => Container(
        height: 300,
        child: GridView(
          primary: false,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 4 / 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          children: categories
              .map((category) => CategoryHeaderWidget(category: category))
              .toList(),
        ),
      );

  Widget buildPopular(BuildContext context) => Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            child: const Text(
              'Popular',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 16),
          Container(
            height: 240,
            child: ListView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: categories
                  .map((category) => CategoryDetailWidget(
                        category: category,
                        onSelectedCategory: (category) {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                CategoryPage(category: category),
                          ));
                        },
                      ))
                  .toList(),
            ),
          )
        ],
      );
}
