import 'package:flutter/material.dart';
import 'package:listeleme_kullanimi/appbar_kullanimi.dart';
import 'package:listeleme_kullanimi/film_app/filmler.dart';
import 'package:listeleme_kullanimi/film_app/filmler_uygulamasi.dart';
import 'package:listeleme_kullanimi/sabit_listeleme.dart';
import 'package:listeleme_kullanimi/sabit_listeleme_grid.dart';

import 'package:listeleme_kullanimi/yemekler/yemek_uygulamasi.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FilmlerSayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AppBarKullanimi(),
            ),
          );
        },
        child: const Text('ElevatedButton'),
      ),
    );
  }
}
