import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lgsmatematik/screens/sign_up_page.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Lottie.asset("assets/73170-teacher-all-language.json"),
      nextScreen: const SignUpPage(),
      splashIconSize: 350,
      duration: 5000,
    );
  }
}
