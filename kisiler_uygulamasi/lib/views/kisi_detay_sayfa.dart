import 'package:flutter/material.dart';
import 'package:kisiler_uygulamasi/entity/kisiler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/kisi_detay_cubit.dart';

class KisiDetaySayfa extends StatefulWidget {
  Kisiler kisi;

  KisiDetaySayfa({required this.kisi});

  @override
  State<KisiDetaySayfa> createState() => _KisiDetaySayfaState();
}

class _KisiDetaySayfaState extends State<KisiDetaySayfa> {
  var tfKisiAdi = TextEditingController();
  var tfKisiTel = TextEditingController();

  Future<void> guncelle(int kisi_id, String kisi_ad, String kisi_tel) async {
    print("Kişi Adı: $kisi_ad");
    print("Kişi Telefon: $kisi_tel");
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var kisi = widget.kisi;
    tfKisiAdi.text = kisi.kisi_ad;
    tfKisiTel.text = kisi.kisi_tel;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kişi Detay'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 50, right: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                controller: tfKisiAdi,
                decoration: InputDecoration(
                  hintText: 'Kişi Adı',
                ),
              ),
              TextField(
                controller: tfKisiTel,
                decoration: InputDecoration(
                  hintText: 'Kişi Telefon',
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    context.read<KisiDetayCubit>().guncelle(
                        widget.kisi.kisi_id, tfKisiAdi.text, tfKisiTel.text);
                  },
                  child: Text('Güncelle')),
            ],
          ),
        ),
      ),
    );
  }
}
