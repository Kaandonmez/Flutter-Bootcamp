import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
      home: const Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  int sayac = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    test();
    sayacKontrol();
  }

  Future<void> test() async {
    var sp = await SharedPreferences.getInstance();
    //Veri Kaydı
    sp.setString("ad", "Kaan");
    sp.setInt("yas", 25);
    sp.setBool("bekar", true);
    sp.setDouble("boy", 1.73);

    var arkadasListe = <String>[];
    arkadasListe.add("Ece");
    arkadasListe.add("Ali");

    //Veri silme
    //sp.remove("ad");

    //Veri Okuma
    String gelenAd = sp.getString("ad") ?? "İsim yok";
    int gelenYas = sp.getInt("yas") ?? 0;
    bool gelenBekar = sp.getBool("bekar") ?? false;
    double gelenBoy = sp.getDouble("boy") ?? 0.0;
    var gelenArkadasListe = sp.getStringList("arkadasListe") ?? null;

    print("gelenAd: $gelenAd");
    print("Gelen yaş:  $gelenYas ");
    print("gelen boy: $gelenBekar");
    print("gelen bekar:  $gelenBekar");

    if (gelenArkadasListe != null) {
      for (var a in gelenArkadasListe) {
        print("Arkadaş: $a");
      }
    }
  }

  Future<void> sayacKontrol() async {
    var sp = await SharedPreferences.getInstance();
    sayac = sp.getInt("sayac") ?? 0;
    setState(() {
      sayac++;
    });
    sp.setInt("sayac", sayac);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Açılış sayısı:  $sayac", style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
