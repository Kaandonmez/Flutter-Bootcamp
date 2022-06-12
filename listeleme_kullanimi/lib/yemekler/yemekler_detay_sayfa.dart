import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:listeleme_kullanimi/yemekler/yemekler.dart';

class YemeklerDetaySayfa extends StatefulWidget {
  Yemekler yemek;

  YemeklerDetaySayfa({required this.yemek});

  @override
  State<YemeklerDetaySayfa> createState() => _YemeklerDetaySayfaState();
}

class _YemeklerDetaySayfaState extends State<YemeklerDetaySayfa> {
  @override
  Widget build(BuildContext context) {
    var y = widget.yemek;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(
          y.YemekAdi,
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Hero(
              tag: y.YemekId,
              child: Image.asset(
                'assets/${y.YemekResmAdi}',
                width: 200,
                height: 200,
              ),
            ),
            Text(
              '${y.YemekAdi}',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              '${y.yemekFiyat}',
              style: TextStyle(fontSize: 20),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                padding: EdgeInsets.all(50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              onPressed: () {
                print('${y.YemekAdi} sepete eklendi');
              },
              child: Text('Sepete Ekle'),
            ),
          ],
        ),
      ),
    );
  }
}
