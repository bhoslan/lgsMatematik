import 'package:flutter/material.dart';
import 'package:lgsmatematik/widget/konu_anlatimi_widget.dart';

class KonuAnlatimiPage extends StatefulWidget {
  const KonuAnlatimiPage({Key? key}) : super(key: key);

  @override
  State<KonuAnlatimiPage> createState() => _KonuAnlatimiPage();
}

class _KonuAnlatimiPage extends State<KonuAnlatimiPage> {
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const KonuAnlatimiWidget()));
                },
                icon: const Icon(Icons.menu_book),
                label: const Text(
                  "Çarpanlar ve Katlar 1",
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
        ],
      ),
    );
  }
}
