import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odev7/cubit/yapilacak_kayit_cubit.dart';

class YapilacakKayitSayfa extends StatefulWidget {
  const YapilacakKayitSayfa({Key? key}) : super(key: key);

  @override
  _YapilacakKayitSayfaState createState() => _YapilacakKayitSayfaState();
}

class _YapilacakKayitSayfaState extends State<YapilacakKayitSayfa> {
  var tfactivityName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[900],
      appBar: AppBar(
        title: const Text("Yapılacak Kayıt"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 50.0, right: 50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                controller: tfactivityName,
                decoration: const InputDecoration(
                  hintText: "Yapılacak İş",
                ),
              ),
              Hero(
                tag: "btnUpdate",
                child: ElevatedButton(
                  onPressed: () {
                    context
                        .read<YapilacakKayitCubit>()
                        .record(tfactivityName.text);
                  },
                  child: const Text("Kayıt"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
