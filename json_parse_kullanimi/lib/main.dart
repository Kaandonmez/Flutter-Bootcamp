import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:json_parse_kullanimi/filmler_api/filmler_cevap.dart';
import 'package:json_parse_kullanimi/kisiler_cevap.dart';
import 'package:json_parse_kullanimi/mesajlar.dart';

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
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //mesajParse();
    //kisilerParse();
    filmlerParse();
  }

  void mesajParse() {
    String veri = '{"success":1,"message":"Successfully"}';
    var json = jsonDecode(veri);
    var mesaj = Mesajlar.fromJson(json);
    print("success: ${mesaj.success}");
    print("message: ${mesaj.message}");
  }

  void kisilerParse() {
    String veri =
        '{"kisiler":[{"kisi_id":"10519","kisi_ad":"aass","kisi_tel":"ss-aa"},{"kisi_id":"10520","kisi_ad":"mehmet","kisi_tel":"0535641667"},{"kisi_id":"10522","kisi_ad":"321","kisi_tel":"321"},{"kisi_id":"10524","kisi_ad":"Davut","kisi_tel":"147852369"},{"kisi_id":"10526","kisi_ad":"Davut","kisi_tel":"147852369"},{"kisi_id":"10528","kisi_ad":"erkin","kisi_tel":"5292982449"},{"kisi_id":"10529","kisi_ad":"BurakYeni","kisi_tel":"12121212"},{"kisi_id":"10530","kisi_ad":"dada\u015f","kisi_tel":"dss"},{"kisi_id":"10531","kisi_ad":"dada\u015f","kisi_tel":"dss"},{"kisi_id":"10532","kisi_ad":"dada\u015f","kisi_tel":"dss"},{"kisi_id":"10534","kisi_ad":"test","kisi_tel":"123"},{"kisi_id":"10535","kisi_ad":"dd","kisi_tel":"11"},{"kisi_id":"10538","kisi_ad":"test ad Xcodedd","kisi_tel":"test tel yu"},{"kisi_id":"10539","kisi_ad":"aaa","kisi_tel":"ss"},{"kisi_id":"10540","kisi_ad":"321fh","kisi_tel":"321"},{"kisi_id":"10542","kisi_ad":"test","kisi_tel":"*492*304*023"},{"kisi_id":"10543","kisi_ad":"test retro ad","kisi_tel":"12312 y"},{"kisi_id":"10546","kisi_ad":"Dogus Testsss","kisi_tel":"321456"},{"kisi_id":"10547","kisi_ad":"Maryam","kisi_tel":"053922331456"},{"kisi_id":"10548","kisi_ad":"mary","kisi_tel":"veri88"},{"kisi_id":"10549","kisi_ad":"DAVUT2","kisi_tel":"147741147"}],"success":1}';

    var json = jsonDecode(veri);
    var kisilerCevap = KisilerCevap.fromJson(json);
    print("success: ${kisilerCevap.success}");

    for (var kisi in kisilerCevap.kisiler) {
      print("kisi_id: ${kisi.kisi_id}");
      print("kisi_ad: ${kisi.kisi_ad}");
      print("kisi_tel: ${kisi.kisi_tel}");
      print("-----------------");
    }
  }

  void filmlerParse() {
    String veri =
        '{"filmler":[{"film_id":"1","film_ad":"Interstellar","film_yil":"2015","film_resim":"interstellar.png","kategori":{"kategori_id":"4","kategori_ad":"Bilim Kurgu"},"yonetmen":{"yonetmen_id":"1","yonetmen_ad":"Christopher Nolan"}},{"film_id":"2","film_ad":"Inception","film_yil":"2010","film_resim":"inception.png","kategori":{"kategori_id":"4","kategori_ad":"Bilim Kurgu"},"yonetmen":{"yonetmen_id":"1","yonetmen_ad":"Christopher Nolan"}},{"film_id":"3","film_ad":"The Pianist","film_yil":"2002","film_resim":"thepianist.png","kategori":{"kategori_id":"3","kategori_ad":"Drama"},"yonetmen":{"yonetmen_id":"4","yonetmen_ad":"Roman Polanski"}},{"film_id":"4","film_ad":"Bir Zamanlar Anadoluda","film_yil":"2011","film_resim":"birzamanlaranadoluda.png","kategori":{"kategori_id":"3","kategori_ad":"Drama"},"yonetmen":{"yonetmen_id":"3","yonetmen_ad":"Nuri Bilge Ceylan"}},{"film_id":"5","film_ad":"The Hateful Eight","film_yil":"2015","film_resim":"thehatefuleight.png","kategori":{"kategori_id":"1","kategori_ad":"Aksiyon"},"yonetmen":{"yonetmen_id":"2","yonetmen_ad":"Quentin Tarantino"}},{"film_id":"18","film_ad":"Django","film_yil":"2013","film_resim":"django.png","kategori":{"kategori_id":"1","kategori_ad":"Aksiyon"},"yonetmen":{"yonetmen_id":"2","yonetmen_ad":"Quentin Tarantino"}}],"success":1}';

    var json = jsonDecode(veri);
    var filmlerCevap = FilmlerCevap.fromJson(json);
    print("success: ${filmlerCevap.success}");

    for (var film in filmlerCevap.filmler) {
      print("film_id: ${film.film_id}");
      print("film_ad: ${film.film_ad}");
      print("film_yil: ${film.film_yil}");
      print("film_resim: ${film.film_resim}");
      print("kategori_id: ${film.kategori.kategori_id}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Json Parse'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[],
        ),
      ),
    );
  }
}
