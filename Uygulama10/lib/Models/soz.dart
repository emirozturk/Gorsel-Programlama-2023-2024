class Soz {
  int? id;
  int kisiId;
  String icerik;
  Soz({this.id, required this.kisiId, required this.icerik});
  Map<String, dynamic> toMap() {
    return {"id": id, "kisiid": kisiId, "icerik": icerik};
  }

  Soz.fromMap(Map<String, dynamic> map)
      : id = map["id"],
        kisiId = map["kisiid"],
        icerik = map["icerik"];
}
