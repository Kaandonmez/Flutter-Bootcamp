import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odev7/cubit/yapilacak_detay_cubit.dart';
import 'package:odev7/cubit/anasayfa_cubit.dart';
import 'package:odev7/entity/yapilacaklar.dart';

class YapilacakDetaySayfa extends StatefulWidget {
  Yapilacak yapilacak;

  YapilacakDetaySayfa({required this.yapilacak});

  @override
  _YapilacakDetaySayfaState createState() => _YapilacakDetaySayfaState();
}

class _YapilacakDetaySayfaState extends State<YapilacakDetaySayfa> {
  var tYapilacakIs = TextEditingController();

  Future<void> update(int yapilacak_id, String yapilacak_is) async {
    print("Update activity: $yapilacak_id $yapilacak_is");
  }

  @override
  void initState() {
    super.initState();
    var yapilacak = widget.yapilacak;
    tYapilacakIs.text = yapilacak.yapilacak_is;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[900],
      appBar: AppBar(
        title: const Text("Yapilan İş Detayı"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 40, right: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                controller: tYapilacakIs,
                decoration: const InputDecoration(
                  hintText: "Yapılacak İş",
                ),
              ),
              Hero(
                tag: "btnUpdate",
                child: ElevatedButton(
                  onPressed: () {
                    context.read<YapilacakDetayCubit>().update(
                        widget.yapilacak.yapilacak_id, tYapilacakIs.text);
                  },
                  child: const Text("Güncelle"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
