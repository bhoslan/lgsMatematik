import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:lgsmatematik/screens/home_page.dart';
import 'package:lgsmatematik/screens/landing_page.dart';
import 'package:lgsmatematik/screens/sign_up_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var email = prefs.getString("email");
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: email == null ? SignUpPage() : HomePage()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MaterialApp title",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: SignUpPage(),
    );
  }
}