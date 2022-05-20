import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lgsmatematik/screens/sign_up_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../data/categories.dart';
import '../data/user.dart';
import '../widget/category_detail_widget.dart';
import '../widget/category_header_widget.dart';
import 'category_page.dart';

class HommePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      leading: const Icon(Icons.menu),
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: const Text("Ana Sayfa"),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: Container(
          padding: const EdgeInsets.all(16),
          alignment: Alignment.centerLeft,
          child: buildWelcome(userName!),
        ),
      ),
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.deepOrange, Colors.purple],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
      ),
      actions: [
        IconButton(
          color: Colors.black,
          icon: const Icon(Icons.exit_to_app),
          onPressed: () async {
            SharedPreferences prefs = await SharedPreferences.getInstance();
            prefs.remove("email");
            FirebaseAuth.instance.signOut().then((value) {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (_) => const SignUpPage()),
                      (Route<dynamic> route) => false);
            });
          },
        )
      ],
    ),
    body: ListView(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.all(16),
      children: [
        const SizedBox(height: 8),
        buildCategories(),
        const SizedBox(height: 32),
        buildPopular(context),
      ],
    ),
  );


  Widget buildWelcome(String username) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
       Text(
        'Merhaba',
        style: const TextStyle(fontSize: 16, color: Colors.white),
      ),
      Text(
        userName!,
        style: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      )
    ],
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