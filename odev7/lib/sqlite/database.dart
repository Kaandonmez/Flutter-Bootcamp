import 'dart:io';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class VeriTabaniYardimcisi {
  static final String dbn = "yapilacaklar.sqlite";

  static Future<Database> dbErisim() async {
    String dbPath = join(await getDatabasesPath(), dbn);

    if (File(dbPath).existsSync()) {
      return await openDatabase(dbPath);
    } else {
      Database db = await openDatabase(dbPath, version: 1,
          onCreate: (Database db, int version) async {
        await db.execute(
            "CREATE TABLE yapilacaklar (yapilacak_id INTEGER PRIMARY KEY, yapilacak_is TEXT)");
      });
      return db;
    }
  }
}
