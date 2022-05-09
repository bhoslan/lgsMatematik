import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatefulWidget {
  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  TextEditingController email = TextEditingController();

  Future <void> sendPassword()  async{
    await _firebaseAuth.sendPasswordResetEmail(
        email: email.text);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () { Navigator.pop(context); },
                color: Colors.black,
              );
            },
          ),
          centerTitle: true,
          backgroundColor: Colors.white54,
          title: const Text(
            "Şifre Sıfırlama",
            style: TextStyle(
              color: Colors.black,
              fontFamily: "OpenSans",
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          elevation: 0,
        ),
        body: Container(
          /*padding: EdgeInsets.all(20.0),
      margin: EdgeInsets.all(20.0),*/
          child: Column(
            children: [
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
              Container(
                child: TextButton(
                    onPressed: () {
                        sendPassword();
                        Navigator.pop(context);
                      },
                    child: const Text(
                      "Sıfırla",
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
        ));
  }
}
