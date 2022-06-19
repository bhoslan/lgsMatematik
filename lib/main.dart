  import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:lgsmatematik/screens/homme_page.dart';
import 'package:lgsmatematik/screens/sign_up_page.dart';
import 'package:lgsmatematik/screens/splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var email = prefs.getString("email");
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]); //Portre modu yada lanscape modda çalışmamızı düzenler. Sadece portre modda çalışır.

  runApp(GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: email == null ? const SplashScreen() : const HommePage()));
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
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
    );
  }
}
