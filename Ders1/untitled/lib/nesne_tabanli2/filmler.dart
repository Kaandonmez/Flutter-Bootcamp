import 'package:untitled/nesne_tabanli2/kategoriler.dart';
import 'package:untitled/nesne_tabanli2/yonetmenler.dart';

class Filmler {
  int film_id;
  String film_ad;
  int film_yil;

  Kategoriler kategori;
  Yonetmenler yonetmen;

  Filmler(
      {required this.film_id,
      required this.film_ad,
      required this.film_yil,
      required this.kategori,
      required this.yonetmen});
}
