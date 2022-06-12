import 'dart:io';

import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class VeriBabaniYardimcisi {
  static final String veritabaniAdi = "rehber.sqlite";

  static Future<Database> veritabaniErisim() async {
    String veritabaniYolu = join(await getDatabasesPath(), veritabaniAdi);
    if (await databaseExists(veritabaniYolu)) {
      print("Veritabanı zaten mevcut");
    } else {
      ByteData data = await rootBundle.load(join("veritabani/$veritabaniAdi"));
      List<int> bytes =
          data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
      await File(veritabaniYolu).writeAsBytes(bytes, flush: true);
      print("Veritabanı kopyalandı");
    }
    return await openDatabase(veritabaniYolu);
  }
}
