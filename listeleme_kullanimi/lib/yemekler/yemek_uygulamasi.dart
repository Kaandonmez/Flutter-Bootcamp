import 'package:flutter/material.dart';
import 'package:listeleme_kullanimi/yemekler/yemekler.dart';
import 'package:listeleme_kullanimi/yemekler/yemekler_detay_sayfa.dart';

class YemekUygulamasi extends StatefulWidget {
  const YemekUygulamasi({Key? key}) : super(key: key);

  @override
  State<YemekUygulamasi> createState() => _YemekUygulamasiState();
}

class _YemekUygulamasiState extends State<YemekUygulamasi> {
  Future<List<Yemekler>> yemekleriGetir() async {
    var yemeklerListesi = <Yemekler>[];
    var y1 = Yemekler(
        YemekId: 1,
        YemekAdi: 'ayran',
        YemekResmAdi: 'ayran.png',
        yemekFiyat: 5.0);
    var y2 = Yemekler(
        YemekId: 2,
        YemekAdi: 'kadayif',
        YemekResmAdi: 'kadayif.png',
        yemekFiyat: 5.0);
    var y3 = Yemekler(
        YemekId: 3,
        YemekAdi: 'fanta',
        YemekResmAdi: 'fanta.png',
        yemekFiyat: 5.0);
    var y4 = Yemekler(
        YemekId: 4,
        YemekAdi: 'baklava',
        YemekResmAdi: 'baklava.png',
        yemekFiyat: 5.0);
    var y5 = Yemekler(
        YemekId: 5,
        YemekAdi: 'kofte',
        YemekResmAdi: 'kofte.png',
        yemekFiyat: 5.0);
    var y6 = Yemekler(
        YemekId: 6,
        YemekAdi: 'makarna',
        YemekResmAdi: 'makarna.png',
        yemekFiyat: 5.0);

    yemeklerListesi.addAll([y1, y2, y3, y4, y5, y6]);

    return yemeklerListesi;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Yemekler"), backgroundColor: Colors.amber),
      body: FutureBuilder<List<Yemekler>>(
          future: yemekleriGetir(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              var yemekListesi = snapshot.data;
              return ListView.builder(
                  itemCount: yemekListesi!.length,
                  itemBuilder: (context, index) {
                    var yemek = yemekListesi[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => YemeklerDetaySayfa(
                                      yemek: yemek,
                                    )));
                      },
                      child: Card(
                          child: Row(
                        children: [
                          Hero(
                            tag: yemek.YemekId,
                            child: Image.asset(
                              'assets/${yemek.YemekResmAdi}',
                              width: 100,
                              height: 100,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(yemek.YemekAdi,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(
                                  height: 50,
                                ),
                                Text('${yemek.yemekFiyat} TL',
                                    style: TextStyle(
                                        fontSize: 25, color: Colors.red)),
                              ],
                            ),
                          ),
                          Spacer(),
                          Icon(Icons.keyboard_arrow_right_rounded)
                        ],
                      )),
                    );
                  });
            } else {
              return Center();
            }
          }),
    );
  }
}
