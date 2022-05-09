import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lgsmatematik/screens/sign_up_page.dart';
import 'package:lgsmatematik/screens/subjects.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white54,
        title: const Text(
          "Ana Sayfa",
          style: TextStyle(
            color: Colors.black,
            fontFamily: "OpenSans",
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
        actions: [
          IconButton(
            color: Colors.black,
            icon: Icon(Icons.exit_to_app),
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
        children: [
          Container(
            alignment: Alignment.center,
            child: TextButton.icon(
              //autofocus: true,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Subjects()));
              },
                icon: const Icon(Icons.menu_book),
                label: const Text(
                  "KONULAR",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                )),
            margin: EdgeInsets.only(top: 30),
            width: 150,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: TextButton.icon(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const Subjects()));
                },
                icon: const Icon(Icons.question_mark),
                label: const Text(
                  "TESTLER",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                )),
            margin: EdgeInsets.only(top: 30),
            width: 150,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.menu_book),
                label: const Text(
                  "DOĞRU-YANLIŞ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                )),
            margin: EdgeInsets.only(top: 30),
            width: 150,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.menu_book),
                label: const Text(
                  "ÇIKMIŞ SORULAR",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                )),
            margin: EdgeInsets.only(top: 30),
            width: 150,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ],
      ),
    );
  }
}
