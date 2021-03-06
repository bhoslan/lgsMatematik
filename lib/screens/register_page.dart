import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  Future<void> register() async {
    await FirebaseAuth.instance
        .createUserWithEmailAndPassword(
            email: email.text, password: password.text)
        .then((user) {
      FirebaseFirestore.instance
          .collection("Users")
          .doc(email.text)
          .set(({"UserEmail": email.text, "UserPassword": password.text}));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
          "Kayıt ol",
          style: TextStyle(
            color: Colors.black,
            fontFamily: "OpenSans",
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          ListTile(
            title: TextField(
              controller: name,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.person_outline,
                  ),
                  hintText: "Kullanıcı Adı"),
            ),
          ),
          Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 5, left: 20, right: 20),
                color: Colors.white54,
                width: 400,
                height: 20,
                child: const Text(
                  "Kullanıcı Adı",
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
              ),
              ListTile(
                title: TextField(
                  controller: email,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.red,
                      ),
                      hintText: "E-Posta"),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 5, left: 20, right: 20),
                color: Colors.white54,
                width: 400,
                height: 20,
                child: const Text(
                  "E-Posta",
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
          ListTile(
            title: TextField(
              controller: password,
              obscureText: true,
              decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock_outline,
                  ),
                  hintText: "Şifre"),
            ),
          ),
          Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 5, left: 20, right: 20),
                color: Colors.white54,
                width: 400,
                height: 20,
                child: const Text(
                  "Şifre",
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
          Container(
            child: TextButton(
                onPressed: () {
                  register();
                  Navigator.pop(context);
                },
                child: const Text(
                  "Kayıt ol",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                )),
            margin: const EdgeInsets.only(top: 30),
            width: 150,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 60, right: 60),
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: Center(
              child: Text.rich(
                TextSpan(
                  text: 'Kayıt olarak, ',
                  style: const TextStyle(fontSize: 10, color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Kullanım Koşullarını',
                        style: const TextStyle(
                          fontSize: 10,
                          color: Colors.black,
                          decoration: TextDecoration.underline,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            // code to open / launch terms of service link here
                          }),
                    const TextSpan(
                        text: ' ve ',
                        style: TextStyle(fontSize: 10, color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Gizlilik Politikasını',
                            style: TextStyle(
                                fontSize: 10,
                                color: Colors.black,
                                decoration: TextDecoration.underline),
                          ),
                          TextSpan(
                            text: ' kabul etmiş olursunuz. ',
                            style: TextStyle(fontSize: 10, color: Colors.black),
                          )
                        ])
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
