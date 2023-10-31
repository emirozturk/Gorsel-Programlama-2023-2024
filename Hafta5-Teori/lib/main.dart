import 'package:flutter/material.dart';
import 'package:flutter_application_1/begeni.dart';
import 'package:flutter_application_1/begeni_listesi.dart';
import 'package:flutter_application_1/liste.dart';
import 'package:flutter_application_1/tuslar.dart';

void main() {
  runApp(Uygulama5());
}

class Uygulama5 extends StatefulWidget {
  @override
  State<Uygulama5> createState() => Uygulama5State();
}

class Uygulama5State extends State<Uygulama5> {
  var liste = BegeniListesi.begeniListesi;
  var controller = TextEditingController();
  void ekle() {
    setState(() {
      var text = controller.text; //Metni al
      var parcalar = text.split("-"); //tireye göre böl
      var yeniBegeni = Begeni(parcalar[0], parcalar[1]);
      liste.add(yeniBegeni); //listeye ekle
      controller.text = "";
    });
  }

  void ara() {
    setState(() {
      var aranan = controller.text;
      if (aranan == "") {
        liste = BegeniListesi.begeniListesi;
      } else {
        liste = BegeniListesi.begeniListesi;
        List<Begeni> yeniListe = [];
        for (var eleman in liste) {
          if (eleman.adSoyad.toLowerCase().contains(aranan.toLowerCase())) {
            yeniListe.add(eleman);
          }
        }
        liste = yeniListe;
      }
    });
  }

  void elemanSec(index) {
    controller.text = liste[index].adSoyad;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                hintText: "Eklenecek ya da aranacak metin",
                icon: Icon(Icons.search),
                fillColor: Colors.red,
              ),
              onChanged: (value) => ara(),
            ),
            Tuslar(
              ekleme: ekle,
              arama: ara,
            ),
            Expanded(
              child: Liste(liste, elemanSec),
            ),
          ],
        ),
      ),
    );
  }
}
