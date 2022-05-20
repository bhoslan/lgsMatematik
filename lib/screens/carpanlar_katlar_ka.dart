import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';


class CarpanlarKatlarKa extends StatefulWidget {
  const CarpanlarKatlarKa({Key? key}) : super(key: key);


  @override
  State<CarpanlarKatlarKa> createState() => _CarpanlarKatlarKaState();
}

class _CarpanlarKatlarKaState extends State<CarpanlarKatlarKa> {

  final List<String> subjectList = [];
  //String Donustur(){}
  int i=1;
  Text folderName(int i){
    return Text("assets/subjects/k$i.jpg");
  }
  //String folderName ="assets/subjects/k$i.jpg";
  final storage = FirebaseStorage.instance;
  static Reference storageRef = FirebaseStorage.instance.ref();
  static Reference imagesRef = storageRef.child("CarpanlarKatlarKa");
  static Reference spaceRef1 = imagesRef.child("CarpanlarKatlarKa/1.jpg");


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      //backgroundColor: Colors.white,
      appBar: AppBar(
        bottomOpacity: 2.0,
        shadowColor: Colors.white54,
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
        backgroundColor: Colors.white10,
        title: const Text(
          "Çarpanlar ve Katlar",
          style: TextStyle(
            color: Colors.black,
            fontFamily: "OpenSans",
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/subjects/k1.jpg"),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        //onTap: ,
        items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.arrow_back), label:"Geri"),
        BottomNavigationBarItem(icon: Icon(Icons.menu_book), label:"İlerleme"),
        BottomNavigationBarItem(icon: Icon(Icons.arrow_forward), label:"İleri"),
      ]),
    );
  }
}
