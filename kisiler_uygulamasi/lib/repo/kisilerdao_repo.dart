import 'package:kisiler_uygulamasi/entity/kisiler.dart';
import 'package:kisiler_uygulamasi/sqlite/veritabani_yardimcisi.dart';

class KisilerDaoRepo {
  Future<void> kisiKayit(String kisiAdi, String kisiTel) async {
    var db = await VeriBabaniYardimcisi.veritabaniErisim();
    // await db.transaction((txn) async {
    //   await txn.rawInsert(
    //       'INSERT INTO kisiler (kisi_ad, kisi_tel) VALUES ("$kisiAdi", "$kisiTel")');
    // });
    var bilgiler = Map<String, dynamic>();
    bilgiler["kisi_ad"] = kisiAdi;
    bilgiler["kisi_tel"] = kisiTel;
    await db.insert("kisiler", bilgiler);
  }

  Future<void> kisiGuncelle(
      int kisi_id, String kisi_ad, String kisi_tel) async {
    var db = await VeriBabaniYardimcisi.veritabaniErisim();
    var bilgiler = Map<String, dynamic>();

    bilgiler["kisi_ad"] = kisi_ad;
    bilgiler["kisi_tel"] = kisi_tel;
    await db.update("kisiler", bilgiler,
        where: "kisi_id = ?", whereArgs: [kisi_id]);
  }

  Future<List<Kisiler>> tumKisileriAl() async {
    var db = await VeriBabaniYardimcisi.veritabaniErisim();
    List<Map<String, dynamic>> maps =
        await db.rawQuery("SELECT * FROM kisiler");
    return List.generate(maps.length, (i) {
      var satir = maps[i];
      return Kisiler(
        kisi_id: satir["kisi_id"],
        kisi_ad: satir["kisi_ad"],
        kisi_tel: satir["kisi_tel"],
      );
    });
  }

  Future<List<Kisiler>> kisiAra(String arama) async {
    var db = await VeriBabaniYardimcisi.veritabaniErisim();
    List<Map<String, dynamic>> maps = await db
        .rawQuery("SELECT * FROM kisiler WHERE kisi_ad LIKE '%$arama%'");
    return List.generate(maps.length, (i) {
      var satir = maps[i];
      return Kisiler(
        kisi_id: satir["kisi_id"],
        kisi_ad: satir["kisi_ad"],
        kisi_tel: satir["kisi_tel"],
      );
    });
  }

  Future<void> kisiSil(int kisi_id) async {
    var db = await VeriBabaniYardimcisi.veritabaniErisim();
    await db.delete("kisiler", where: "kisi_id = ?", whereArgs: [kisi_id]);
  }
}
