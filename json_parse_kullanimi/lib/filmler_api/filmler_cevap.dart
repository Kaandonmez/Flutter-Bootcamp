import 'package:json_parse_kullanimi/filmler_api/filmler.dart';

class FilmlerCevap {
  List<Filmler> filmler;
  int success;

  FilmlerCevap({required this.filmler, required this.success});

  factory FilmlerCevap.fromJson(Map<String, dynamic> json) {
    return FilmlerCevap(
      filmler: (json["filmler"] as List<dynamic>)
          .map((e) => Filmler.fromJson(e as Map<String, dynamic>))
          .toList(),
      success: json["success"] as int,
    );
  }
}
