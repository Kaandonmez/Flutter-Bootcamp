import 'package:flutter/material.dart';
import 'package:listeleme_kullanimi/film_app/film_detay.dart';
import 'package:listeleme_kullanimi/film_app/filmler.dart';

class FilmlerSayfa extends StatefulWidget {
  const FilmlerSayfa({Key? key}) : super(key: key);

  @override
  State<FilmlerSayfa> createState() => _FilmlerSayfaState();
}

class _FilmlerSayfaState extends State<FilmlerSayfa> {
  //filmleri getir

  Future<List<Filmler>> filmleriGetir() async {
    var filmlerListesi = <Filmler>[];
    var f1 = Filmler(
      filmId: 1,
      filmAdi: 'Anadoluda',
      filmResim: 'assets/filmler/anadoluda.png',
      filmFiyat: 9.99,
    );
    var f2 = Filmler(
      filmId: 2,
      filmAdi: 'django',
      filmResim: 'assets/filmler/django.png',
      filmFiyat: 9.99,
    );
    var f3 = Filmler(
      filmId: 3,
      filmAdi: 'inception',
      filmResim: 'assets/filmler/inception.png',
      filmFiyat: 9.99,
    );
    var f4 = Filmler(
      filmId: 4,
      filmAdi: 'interstellar',
      filmResim: 'assets/filmler/interstellar.png',
      filmFiyat: 9.99,
    );
    var f5 = Filmler(
      filmId: 5,
      filmAdi: 'thehatefuleight',
      filmResim: 'assets/filmler/thehatefuleight.png',
      filmFiyat: 9.99,
    );
    var f6 = Filmler(
      filmId: 6,
      filmAdi: 'thepianist',
      filmResim: 'assets/filmler/thepianist.png',
      filmFiyat: 9.99,
    );

    filmlerListesi.addAll([f1, f2, f3, f4, f5, f6]);

    return filmlerListesi;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text('Filmler'),
      ),
      body: FutureBuilder<List<Filmler>>(
        future: filmleriGetir(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var filmlerListesi = snapshot.data;
            return GridView.builder(
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                FilmlerDetay(film: filmlerListesi![index])));
                  },
                  child: Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            filmlerListesi![index].filmResim,
                          ),
                        ),
                        Text(
                          filmlerListesi[index].filmAdi,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                            "${filmlerListesi[index].filmFiyat.toString()} \$"),
                      ],
                    ),
                  ),
                );
              },
              itemCount: filmlerListesi!.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 2 / 3,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
              ),
            );
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          } else {
            return const Center(
              child: const CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
