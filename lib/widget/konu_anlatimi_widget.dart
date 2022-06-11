import 'package:flutter/material.dart';
import 'package:lgsmatematik/data/konu_anlatimi1.dart';
import 'package:lgsmatematik/models/konu_anlatimi.dart';
import 'package:lgsmatematik/screens/carpanlar_katlar_ka.dart';

class KonuAnlatimiWidget extends StatefulWidget {
  KonuAnlatimiWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<KonuAnlatimiWidget> createState() => _KonuAnlatimiWidgetState();
}

class _KonuAnlatimiWidgetState extends State<KonuAnlatimiWidget> {
  @override
  int _selectedIndex=0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  Widget build(BuildContext context) => Scaffold(
        body: PageView.builder(
          itemCount: carpanlarKatlarKa.length,
          itemBuilder: (context, _selectedIndex) {
            return carpanlarKatlarKa[_selectedIndex];
          },
        ),
        bottomNavigationBar: BottomNavigationBar(items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.skip_previous),
            label: "Önceki",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.skip_next),
            label: "Sonraki",
          )
        ],
        currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      );
}
