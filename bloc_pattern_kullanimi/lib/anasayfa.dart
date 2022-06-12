import 'package:bloc_pattern_kullanimi/anasayfa_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  var t1 = TextEditingController();
  var t2 = TextEditingController();
  int sonuc = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BlocPattern Kullanimi'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BlocBuilder<AnasayfaCubit, int>(builder: (context, state) {
                return Text(
                  'Sonuc: $state',
                  style: TextStyle(fontSize: 30),
                );
              }),
              TextField(
                controller: t1,
                decoration: InputDecoration(
                  hintText: "1. sayı",
                ),
              ),
              TextField(
                controller: t2,
                decoration: InputDecoration(
                  hintText: "2. sayı",
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      //make elevatedbutton style
                      style: ElevatedButton.styleFrom(
                        primary: Colors.lime,
                      ),
                      onPressed: () {
                        context.read<AnasayfaCubit>().topla(t1.text, t2.text);
                      },
                      child: Text('Topla')),
                  ElevatedButton(
                      onPressed: () {
                        context.read<AnasayfaCubit>().carpma(t1.text, t2.text);
                      },
                      child: Text('Çarpma')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
