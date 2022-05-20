import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lgsmatematik/screens/home_page.dart';
import 'package:lgsmatematik/screens/register_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'forgot_password.dart';
import 'homme_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);
  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  signUp() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("email", email.text);
    FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email.text, password: password.text)
        .then((value) {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (_) => HommePage()),
          (Route<dynamic> route) => false);
    });
  }

  ListTile _ePostaWidget() {
    return ListTile(
      title: TextField(
        controller: email,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.email,
              color: Colors.red,
            ),
            hintText: "E-Posta"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white54,
        title: const Text(
          "Giriş",
          style: TextStyle(
            color: Colors.black,
            fontFamily: "OpenSans",
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0, //AppBar'ın arka planını beyaz yapar.
      ),
      body: _buildEmailPassword(),
    );
  }

  Widget _buildEmailPassword() {
    return SingleChildScrollView(
      child: Column(
        children: [
          _ePostaWidget(),
          Container(
            margin: EdgeInsets.only(top: 5, left: 20, right: 20),
            color: Colors.white54,
            width: 400,
            height: 20,
            child: Text(
              "E-Posta",
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
          ),
          ListTile(
            title: TextField(
              controller: password,
              obscureText: true,
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock_outline,
                  ),
                  hintText: "Şifre"),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5, left: 20, right: 20),
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Şifre", style: TextStyle(fontWeight: FontWeight.w400)),
                //Text("Şifremi unuttum",style: TextStyle(fontWeight: FontWeight.bold)),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ForgotPasswordPage()),
                      );
                    },
                    child: Text("Şifremi unuttum",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.underline,
                          color: Colors.black,
                          decorationThickness: 3,
                        )))
              ],
            ),
          ),
          Container(
            child: TextButton(
                onPressed: () {
                  signUp();
                },
                child: Text(
                  "Giriş yap",
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
            color: Colors.white,
            margin: EdgeInsets.only(top: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Hesabınız yok mu?"),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RegisterPage()),
                      );
                    },
                    child: Text("Kayıt ol",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold,
                            color: Colors.black))),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            margin: EdgeInsets.only(top: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {
                      _misafirGirisi();
                    },
                    child: Text("Misafir Girişi",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold,
                            color: Colors.black))),
              ],
            ),
          )
        ],
      ),
    );
  }

  void _misafirGirisi() async {
    UserCredential result = await FirebaseAuth.instance.signInAnonymously();
    print("Oturum açan user id : " + result.user!.uid.toString());
  }
}
//automaticallyImplyLeading: false,
