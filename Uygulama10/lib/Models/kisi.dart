class Kisi {
  int? id;
  String adsoyad;
  String sifre;
  Kisi({this.id, required this.adsoyad, required this.sifre});
  Map<String, dynamic> toMap() {
    return {"id": id, "adsoyad": adsoyad, "sifre": sifre};
  }

  Kisi.fromMap(Map<String, dynamic> map)
      : id = map["id"],
        adsoyad = map["adsoyad"],
        sifre = map["sifre"];
}
