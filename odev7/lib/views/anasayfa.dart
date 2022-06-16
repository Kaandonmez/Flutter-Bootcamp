import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odev7/cubit/anasayfa_cubit.dart';
import 'package:odev7/entity/activity.dart';
import 'package:odev7/views/yapilacak_detay_sayfa.dart';
import 'package:odev7/views/yapilacak_kayit_sayfa.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  _AnasayfaState createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  bool aramaYapiliyorMu = false;

  @override
  void initState() {
    super.initState();
    context.read<AnasayfaCubit>().tumIsleriYukle();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[900],
      appBar: AppBar(
        title: aramaYapiliyorMu
            ? TextField(
                decoration: const InputDecoration(hintText: "Aradığınız İş"),
                onChanged: (s) {
                  context.read<AnasayfaCubit>().ara(s);
                },
              )
            : const Text("Yapılacaklar Listesi"),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  aramaYapiliyorMu = !aramaYapiliyorMu;
                  context.read<AnasayfaCubit>().tumIsleriYukle();
                });
              },
              icon: !aramaYapiliyorMu
                  ? const Icon(Icons.search_rounded)
                  : const Icon(Icons.clear_rounded)),
        ],
      ),
      body: BlocBuilder<AnasayfaCubit, List<Yapilacak>>(
        builder: (context, yapilacaklar) {
          if (yapilacaklar.isNotEmpty) {
            return Padding(
              padding: const EdgeInsets.only(top: 4),
              child: ListView.builder(
                  itemCount: yapilacaklar.length,
                  itemBuilder: (context, index) {
                    var a = yapilacaklar[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => YapilacakDetaySayfa(
                                      yapilacak: a,
                                    ))).then((_) {
                          context.read<AnasayfaCubit>().tumIsleriYukle();
                        });
                      },
                      child: Card(
                        color: Colors.teal[600],
                        child: Padding(
                          padding: const EdgeInsets.only(
                              bottom: 12, top: 12, left: 8, right: 8),
                          child: Row(
                            children: [
                              Text(a.yapilacak_is,
                                  style: const TextStyle(fontSize: 20)),
                              const Spacer(),
                              IconButton(
                                  onPressed: () {
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(SnackBar(
                                      content: Text(
                                          " '${a.yapilacak_is}' kaydını silmek istediğinize emin misiniz?"),
                                      action: SnackBarAction(
                                        label: "Evet, Sil",
                                        onPressed: () {
                                          context
                                              .read<AnasayfaCubit>()
                                              .sil(a.yapilacak_id);
                                        },
                                      ),
                                    ));
                                  },
                                  icon: const Icon(
                                    Icons.delete_sweep,
                                    color: Colors.red,
                                    size: 40,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            );
          } else {
            return const Center();
          }
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
          heroTag: "btnUpdate",
          onPressed: () {
            Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const YapilacakKayitSayfa()))
                .then((_) {
              context.read<AnasayfaCubit>().tumIsleriYukle();
            });
          },
          label: Row(
            children: [
              const Text("Yeni Kayıt Ekle  "),
              const Icon(
                Icons.add,
                size: 28,
              )
            ],
          )),
    );
  }
}
