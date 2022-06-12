import 'package:calisma_yapisi/anasayfa.dart';
import 'package:calisma_yapisi/oyun_ekrani.dart';
import 'package:calisma_yapisi/sonuc_ekrani.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: const Anasayfa(),
      initialRoute: '/',
      routes: {
        '/': (context) => const Anasayfa(),
        //'/oyun_ekrani': (context) => OyunEkrani(),
        '/sonuc_ekrani': (context) => const SonucEkrani(),
      },
    );
  }
}
