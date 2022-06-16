import 'package:odev7/entity/activity.dart';
import 'package:odev7/sqlite/database.dart';

class YapilacakDaoRep {
  Future<List<Yapilacak>> tumunuAl() async {
    var db = await DBHelper.accessToDB();
    List<Map<String, dynamic>> maps =
        await db.rawQuery("SELECT * FROM yapilacaklar");

    return List.generate(maps.length, (index) {
      return Yapilacak(
          yapilacak_id: maps[index]["yapilacak_id"],
          yapilacak_is: maps[index]["yapilacak_is"]);
    });
  }

  Future<List<Yapilacak>> araYapilacaklar(String aramaKelimesi) async {
    var db = await DBHelper.accessToDB();
    List<Map<String, dynamic>> maps = await db.rawQuery(
        "SELECT * FROM yapilacaklar WHERE yapilacak_is LIKE '%$aramaKelimesi%'");

    return List.generate(maps.length, (index) {
      return Yapilacak(
          yapilacak_id: maps[index]["yapilacak_id"],
          yapilacak_is: maps[index]["yapilacak_is"]);
    });
  }

  Future<void> silYapilacaklar(int yapilacak_id) async {
    var db = await DBHelper.accessToDB();
    await db.delete("yapilacaklar",
        where: "yapilacak_id = ?", whereArgs: [yapilacak_id]);
  }

  Future<void> ekleYapilacaklar(String yapilacak_is) async {
    var db = await DBHelper.accessToDB();
    await db.insert("yapilacaklar", {"yapilacak_is": yapilacak_is});
  }

  Future<void> guncelleYapilacaklar(
      int yapilacak_id, String yapilacak_is) async {
    var db = await DBHelper.accessToDB();
    await db.update("yapilacaklar", {"yapilacak_is": yapilacak_is},
        where: "yapilacak_id = ?", whereArgs: [yapilacak_id]);
  }
}
