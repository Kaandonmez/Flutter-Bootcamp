import 'package:flutter/material.dart';

import 'package:listeleme_kullanimi/film_app/filmler.dart';

class FilmlerDetay extends StatefulWidget {
  Filmler film;

  FilmlerDetay({required this.film});

  @override
  State<FilmlerDetay> createState() => _FilmlerDetayState();
}

class _FilmlerDetayState extends State<FilmlerDetay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //deeppurple appbar
      appBar: AppBar(
        title: Text(widget.film.filmAdi),
        backgroundColor: Colors.deepPurple,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(widget.film.filmResim),
            Text(
              '${widget.film.filmFiyat} \$',
              style: TextStyle(fontSize: 35),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Rent  Film'),
            ),
          ],
        ),
      ),
    );
  }
}
