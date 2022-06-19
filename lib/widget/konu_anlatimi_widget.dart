import 'package:flutter/material.dart';
import 'package:lgsmatematik/data/konu_anlatimi1.dart';

class KonuAnlatimiWidget extends StatefulWidget {
  const KonuAnlatimiWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<KonuAnlatimiWidget> createState() => _KonuAnlatimiWidgetState();
}

class _KonuAnlatimiWidgetState extends State<KonuAnlatimiWidget> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: PageView.builder(
          itemCount: carpanlarKatlarKa.length,
          itemBuilder: (context, _selectedIndex) {
            return carpanlarKatlarKa[_selectedIndex];
          },
        ),
      );
}
