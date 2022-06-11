import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lgsmatematik/screens/sign_up_page.dart';
import 'package:lgsmatematik/screens/subjects.dart';
import 'package:lgsmatematik/screens/tests_page.dart';
import 'package:lgsmatematik/screens/true_false_page1.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TrueFalsePage extends StatefulWidget {
  @override
  State<TrueFalsePage> createState() => _TrueFalsePageState();
}

class _TrueFalsePageState extends State<TrueFalsePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
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
        centerTitle: true,
        backgroundColor: Colors.white54,
        title: const Text(
          "Konu Seçin",
          style: TextStyle(
            color: Colors.black,
            fontFamily: "OpenSans",
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
      ),
      body: ListView(
        children: [
          Container(
            alignment: Alignment.center,
            child: TextButton.icon(
              //autofocus: true,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>TrueFalsePage1()));
                },
                icon: const Icon(Icons.menu_book),
                label: const Text(
                  "Çarpanlar ve Katlar 1",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                )),
            margin: EdgeInsets.only(top: 30),
            width: 150,
            height: 60,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.orange, Colors.purple],
              ),
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ],
      ),
    );
  }
}
