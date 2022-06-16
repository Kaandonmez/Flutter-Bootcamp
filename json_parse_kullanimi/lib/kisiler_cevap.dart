import 'package:json_parse_kullanimi/kisiler.dart';

class KisilerCevap {
  List<Kisiler> kisiler;
  int success;

  KisilerCevap({required this.kisiler, required this.success});

  factory KisilerCevap.fromJson(Map<String, dynamic> json) {
    return KisilerCevap(
      kisiler: (json["kisiler"] as List<dynamic>)
          .map((e) => Kisiler.fromJson(e as Map<String, dynamic>))
          .toList(),
      success: json["success"] as int,
    );
  }
}
