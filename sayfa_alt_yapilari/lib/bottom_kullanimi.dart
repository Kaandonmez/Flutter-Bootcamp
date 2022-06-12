import 'package:flutter/material.dart';

import 'package:sayfa_alt_yapilari/sayfa_bir.dart';
import 'package:sayfa_alt_yapilari/sayfa_iki.dart';
import 'package:sayfa_alt_yapilari/sayfa_uc.dart';

class BottomKullanimi extends StatefulWidget {
  const BottomKullanimi({Key? key}) : super(key: key);

  @override
  State<BottomKullanimi> createState() => _BottomKullanimiState();
}

class _BottomKullanimiState extends State<BottomKullanimi> {
  int _selectedIndex = 0;
  var sayfaListesi = [const SayfaBir(), const SayfaIki(), const SayfaUc()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//bottomNavigationBar
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text("Bottom Kullanimi"),
      ),
      body: sayfaListesi[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.blueGrey,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.blue,
          currentIndex: _selectedIndex,
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: [
            const BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Ana Sayfa",
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Arama",
            ),
            const BottomNavigationBarItem(
              icon: const Icon(Icons.add),
              label: "Ekle",
            ),
          ]),
    );
  }
}
