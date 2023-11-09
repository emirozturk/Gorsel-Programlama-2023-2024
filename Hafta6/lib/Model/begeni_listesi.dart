
import 'package:flutter_application_1/Model/begeni.dart';
import 'package:flutter_application_1/Model/kisi_listesi.dart';
import 'package:flutter_application_1/Model/parca_listesi.dart';

class BegeniListesi {
  static List<Begeni> begeniler = [
    Begeni(kisi:KisiListesi.kisiler[0],parca: ParcaListesi.parcalar[0]),
    Begeni(kisi:KisiListesi.kisiler[1],parca: ParcaListesi.parcalar[1]),
    Begeni(kisi:KisiListesi.kisiler[2],parca: ParcaListesi.parcalar[2]),
    Begeni(kisi:KisiListesi.kisiler[3],parca: ParcaListesi.parcalar[3]),
    Begeni(kisi:KisiListesi.kisiler[4],parca: ParcaListesi.parcalar[4]),
    Begeni(kisi:KisiListesi.kisiler[5],parca: ParcaListesi.parcalar[5]),
    Begeni(kisi:KisiListesi.kisiler[6],parca: ParcaListesi.parcalar[6]),
    Begeni(kisi:KisiListesi.kisiler[7],parca: ParcaListesi.parcalar[7]),
  ];
}
