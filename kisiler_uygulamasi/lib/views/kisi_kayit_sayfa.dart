import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kisiler_uygulamasi/cubit/kisi_kayit_cubit.dart';

class KisiKayitSayfa extends StatefulWidget {
  const KisiKayitSayfa({super.key});

  @override
  State<KisiKayitSayfa> createState() => _KisiKayitSayfaState();
}

class _KisiKayitSayfaState extends State<KisiKayitSayfa> {
  var tfKisiAdi = TextEditingController();
  var tfKisiTel = TextEditingController();

  Future<void> kayit(String kisi_ad, String kisi_tel) async {
    print("Kişi Adı: $kisi_ad");
    print("Kişi Telefon: $kisi_tel");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kişiler'),
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
                    context
                        .read<KisiKayitCubit>()
                        .kayit(tfKisiAdi.text, tfKisiTel.text);
                  },
                  child: Text('Kaydet')),
            ],
          ),
        ),
      ),
    );
  }
}
