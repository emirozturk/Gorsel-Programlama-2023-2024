class Sinif {
  var degisken1;
  var degisken2;
  Sinif({required this.degisken1, this.degisken2});
}

void main() {
  print("Deneme");
  var isimler = [
    "Emir Öztürk",
    "Ferhat Yenilmez",
    "Hamit Burak Koçtaş",
    "İlker Çelebi",
    "Mustafa Mustafa",
    "Beyza Kaleli"
  ];
  for (var i = 0; i < isimler.length; i++) {
    print(isimler[i]);
  }
  for (var isim in isimler) {
    print(isim);
  }
  var liste = isimler.where((element) => element.startsWith("E")).toList();
  print("------");
  for (var eleman in liste) {
    print(eleman);
  }
  //var nesne = Sinif("Degisken1Degeri");
  //var nesne = Sinif("Degisken1Degeri","Degisken2Degeri");v
  var nesne = Sinif(degisken2: "D2degeri", degisken1: "D1degeri");
  var nesne3 = Sinif(degisken1: "D1degeri");
  var nesne4 = Sinif(degisken2: "D2degeri");
  
}
