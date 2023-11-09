import 'package:flutter/material.dart';
import 'package:flutter_application_1/Model/begeni.dart';
import 'package:flutter_application_1/Model/begeni_listesi.dart';
import 'package:flutter_application_1/Model/kisi.dart';
import 'package:flutter_application_1/Model/kisi_listesi.dart';
import 'package:flutter_application_1/Model/parca.dart';
import 'package:flutter_application_1/Model/parca_listesi.dart';
import 'package:flutter_application_1/kisiler_widget.dart';
import 'package:flutter_application_1/parca_widget.dart';

class BegenilerWidget extends StatefulWidget {
  @override
  State<BegenilerWidget> createState() => _BegenilerWidgetState();
}

class _BegenilerWidgetState extends State<BegenilerWidget> {
  List<Begeni> begeniler = BegeniListesi.begeniler;

  var suAnkiAdSoyad = "Kisi";

  void indexAlma(index) {
    setState(() {
      var kisiler = KisiListesi.kisiler;
      suAnkiAdSoyad = "${kisiler[index].ad} ${kisiler[index].soyad}";
      Navigator.pop(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => KisilerWidget(indexAlma),
              ),
            ),
            child: Text(suAnkiAdSoyad),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: () {},
            child: Text("Parça"),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: begeniler.length,
            itemBuilder: (context, index) => ListTile(
              title: Text(
                  "${begeniler[index].kisi.ad} ${begeniler[index].kisi.soyad}"),
              subtitle: ParcaWidget(begeniler[index].parca, index),
            ),
          ),
        )
      ],
    );
  }
}
