import 'package:flutter/material.dart';
import 'package:sayfa_alt_yapilari/sayfa_bir.dart';
import 'package:sayfa_alt_yapilari/sayfa_iki.dart';
import 'package:sayfa_alt_yapilari/sayfa_uc.dart';

class TabsKullanimi extends StatefulWidget {
  const TabsKullanimi({Key? key}) : super(key: key);

  @override
  State<TabsKullanimi> createState() => _TabsKullanimiState();
}

class _TabsKullanimiState extends State<TabsKullanimi> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: const Text("Tabs Kullanimi"),
          bottom: const TabBar(
            indicatorColor: Colors.red,
            labelColor: Colors.lime,
            tabs: [
              Tab(
                text: "Sayfa 1",
              ),
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                text: "Sayfa 3",
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            SayfaBir(),
            SayfaIki(),
            SayfaUc(),
          ],
        ),
      ),
    );
  }
}
