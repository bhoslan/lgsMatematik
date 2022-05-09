import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lgsmatematik/screens/home_page.dart';
import 'package:lgsmatematik/screens/sign_up_page.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  late User _user;
  @override
  void initState() {
    super.initState();
    _checkUser();
  }
  @override
  Widget build(BuildContext context) {
    if(_user == null){
      return HomePage();
    }else{
      return const SignUpPage();
    }
  }
  Future<void> _checkUser()async {
    _user =  await FirebaseAuth.instance.currentUser!;
  }
}
