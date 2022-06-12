import 'package:flutter/material.dart';

import 'package:sayfa_alt_yapilari/sayfa_bir.dart';
import 'package:sayfa_alt_yapilari/sayfa_iki.dart';
import 'package:sayfa_alt_yapilari/sayfa_uc.dart';

class DrawerKullanimi extends StatefulWidget {
  const DrawerKullanimi({Key? key}) : super(key: key);

  @override
  State<DrawerKullanimi> createState() => _DrawerKullanimiState();
}

class _DrawerKullanimiState extends State<DrawerKullanimi> {
  int secilenIndex = 0;
  var sayfaListesi = [const SayfaBir(), const SayfaIki(), const SayfaUc()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text("Drawer Kullanimi"),
      ),
      body: sayfaListesi[secilenIndex],
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.blueGrey,
              ),
              child: Text("Drawer Header"),
            ),
            ListTile(
              title: const Text("Ana Sayfa"),
              leading: const Icon(Icons.home),
              onTap: () {
                setState(() {
                  secilenIndex = 0;
                });

                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text("Arama"),
              leading: const Icon(Icons.search),
              onTap: () {
                setState(() {
                  secilenIndex = 1;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text("Ekle"),
              leading: const Icon(Icons.add),
              onTap: () {
                setState(() {
                  secilenIndex = 2;
                });
                Navigator.pop(context);
              },
            ),
            ExpansionTile(
                title: const Text("Expansion Tile"),
                children: <Widget>[
                  ListTile(
                    title: const Text("Expansion Tile 1"),
                    leading: const Icon(Icons.add),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    title: const Text("Expansion Tile 2"),
                    leading: const Icon(Icons.add),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ]),
          ],
        ),
      ),
    );
  }
}
