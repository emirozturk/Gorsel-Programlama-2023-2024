import 'dart:io';

import 'package:uygulama8/soz.dart';

class DosyaIslem {
  static Future<List<Soz>> dosyadanOku(String yol) async {
    List<Soz> liste = [];
    var satirlar = await File(yol).readAsLines();
    for (String satir in satirlar) {
      var parcalar = satir.split(",");
      var yeniKayit = Soz(isim: parcalar[0], soz: parcalar[1]);
      liste.add(yeniKayit);
    }
    await Future.delayed(Duration(seconds: 5));
    return liste;
  }

  static void dosyayaYaz(String yol, List<Soz> liste) async {
    var sonucStringi = "";
    for (var eleman in liste) {
      sonucStringi += "${eleman.isim},${eleman.soz}\n";
    }
    await File(yol).writeAsString(sonucStringi);
  }
}
