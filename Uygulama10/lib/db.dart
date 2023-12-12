import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';
import 'package:sqilte/Models/kisi.dart';

class Db {
  static Future<Database> veritabaniniAl() async {
    var path = join(await getDatabasesPath(), "Soz.db");
    return openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute(
            "CREATE TABLE kisi(id integer autoincrement primary key, adsoyad text,sifre text)");
        await db.execute(
            "CREATE TABLE soz(id integer autoincrement primary key, icerik text, kisiid integer, foreign key(kisiid) references kisi(id))");
      },
    );
  }

  static void kisiEkle(Kisi kisi) {
    veritabaniniAl().then((veritabani) {
      veritabani.insert("kisi", kisi.toMap());
    });
  }

  static void kisiSil(int id) {
    veritabaniniAl().then((veritabani) {
      veritabani.delete("kisi", where: "id=?", whereArgs: [id]);
    });
  }

  static void kisiGuncelle(Kisi kisi) {
    veritabaniniAl().then((value) {
      value.update("kisi", kisi.toMap(), where: "id=?", whereArgs: [kisi.id]);
    });
  }

  static Future<List<Kisi>> kisiListele() async {
    var db = await veritabaniniAl();
    //db.query("kisi",columns:  "id,adsoyad", where: "id=?", whereArgs: [123]);
    var cevap = await db.query("kisi");
    /*
    List<Kisi> kisiListesi = [];
    for (var eleman in cevap) {
      var yeniKisi = Kisi.fromMap(eleman);
      kisiListesi.add(yeniKisi);
    }
    return kisiListesi;
    */
    return cevap.map((x) => Kisi.fromMap(x)).toList();
  }
}
