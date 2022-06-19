import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lgsmatematik/screens/profile_page.dart';
import 'package:lgsmatematik/screens/sign_up_page.dart';
import 'package:lgsmatematik/screens/tests_page.dart';
import 'package:lgsmatematik/screens/true_false_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../data/categories.dart';
import '../widget/category_detail_widget.dart';
import '../widget/category_header_widget.dart';
import 'category_page.dart';
import 'konu_anlatimi_page.dart';

class HommePage extends StatelessWidget {
  const HommePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context){
              return IconButton(onPressed: (){Navigator.push(context,
                  MaterialPageRoute (
                  builder: (BuildContext context) => const ProfilePage()));},
                  icon: const Icon(Icons.portrait_sharp));
            },
          ) ,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text("Ana Sayfa"),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(80),
            child: Container(
              padding: const EdgeInsets.all(16),
              alignment: Alignment.centerLeft,
              child: buildWelcome("userName"),
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
            Container(
              alignment: Alignment.center,
              child: TextButton.icon(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>const TestsPage() )); //TestsPage()
                  },
                  icon: const Icon(Icons.question_mark),
                  label: const Text(
                    "Testler",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  )),
              margin: const EdgeInsets.only(top: 30),
              width: 150,
              height: 60,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Colors.orange, Colors.purple],
                ),
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: TextButton.icon(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TrueFalsePage()));
                  },
                  icon: const Icon(Icons.question_mark),
                  label: const Text(
                    "Doğru-Yanlış",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  )),
              margin: const EdgeInsets.only(top: 30),
              width: 150,
              height: 60,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Colors.orange, Colors.purple],
                ),
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: TextButton.icon(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const KonuAnlatimiPage()));
                  },
                  icon: const Icon(Icons.question_mark),
                  label: const Text(
                    "Konu Anlatımları",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  )),
              margin: const EdgeInsets.only(top: 30),
              width: 150,
              height: 60,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Colors.orange, Colors.purple],
                ),
                borderRadius: BorderRadius.circular(30),
              ),
            )
          ],
        ),
      );

  Widget buildWelcome(String username) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Merhaba',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
          Text(
            "Burhan",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          )
        ],
      );

  Widget buildCategories() => SizedBox(
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
          SizedBox(
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
