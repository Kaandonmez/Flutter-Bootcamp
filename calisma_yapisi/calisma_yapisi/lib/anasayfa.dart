import 'package:calisma_yapisi/kisiler.dart';
import 'package:calisma_yapisi/oyun_ekrani.dart';
import 'package:calisma_yapisi/sonuc_ekrani.dart';
import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> with WidgetsBindingObserver {
  int sayac = 0;
  bool kontrol = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("init state çalıştı");
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    WidgetsBinding.instance.removeObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // TODO: implement didChangeAppLifecycleState

    if (state == AppLifecycleState.inactive) {
      print("inaktif");
    } else if (state == AppLifecycleState.resumed) {
      print("devam ediyor");
    } else if (state == AppLifecycleState.paused) {
      print("durdu");
    } else if (state == AppLifecycleState.detached) {
      print("detached");
    }
  }

  Future<int> faktoriyelHesaplama(int sayi) async {
    int faktoriyel = 1;
    for (int i = 1; i <= sayi; i++) {
      faktoriyel *= i;
    }
    return faktoriyel;
  }

  @override
  Widget build(BuildContext context) {
    print("build çalıştı");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Anasayfa"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text("Sonuc : $sayac"),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    sayac++;
                  });
                },
                child: const Text("Sayıyı Arttır")),
            ElevatedButton(
                onPressed: () {
                  var kisi =
                      Kisiler(ad: "Ahmet", yas: 20, boy: 178, bekar: false);
                  Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => OyunEkrani(kisi: kisi))))
                      .then((value) => {
                            print("Anasayfaya geri dönüldü"),
                          });
                },
                child: const Text("Başla")),
            Visibility(
              child: Text("Merhaba"),
              visible: kontrol,
            ),
            Text(
              kontrol ? "data" : "a",
              style: TextStyle(color: kontrol ? Colors.red : Colors.blue),
            ),
            (() {
              if (kontrol) {
                return Text("Merhaba");
              } else {
                return Text("aaaa");
              }
            }()),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    kontrol = true;
                  });
                },
                child: const Text("true")),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    kontrol = false;
                  });
                },
                child: const Text("false")),
            FutureBuilder<int>(
              future: faktoriyelHesaplama(5),
              builder: ((context, snapshot) {
                if (snapshot.hasData) {
                  return Text("Faktoriyel : ${snapshot.data}");
                } else if (snapshot.hasError) {
                  return Text("Hata : ${snapshot.error}");
                } else {
                  return Text("Bekleniyor");
                }
              }),
            ),
          ],
        ),
      ),
    );
  }
}
