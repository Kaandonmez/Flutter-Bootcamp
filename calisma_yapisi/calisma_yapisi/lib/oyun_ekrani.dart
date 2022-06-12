import 'package:calisma_yapisi/kisiler.dart';
import 'package:flutter/material.dart';

import 'package:calisma_yapisi/sonuc_ekrani.dart';

class OyunEkrani extends StatefulWidget {
  Kisiler kisi;
  OyunEkrani({required this.kisi});

  @override
  State<OyunEkrani> createState() => _OyunEkraniState();
}

class _OyunEkraniState extends State<OyunEkrani> {
  Future<bool> geriDonusTusu(BuildContext context) async {
    print("Navigation geri tuşu tıklandı");

    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Oyun Ekranı"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_sharp),
          onPressed: () {
            print("Geri tuşu tıklandı");
            Navigator.pop(context);
          },
        ),
      ),
      body: WillPopScope(
        onWillPop: () => geriDonusTusu(context),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                  "Adınız: ${widget.kisi.ad}, Yaşınız: ${widget.kisi.yas}, Boyunuz: ${widget.kisi.boy}, Bekarlık: ${widget.kisi.bekar}"),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const SonucEkrani())));
                  },
                  child: Text("BİTTİ"))
            ],
          ),
        ),
      ),
    );
  }
}
