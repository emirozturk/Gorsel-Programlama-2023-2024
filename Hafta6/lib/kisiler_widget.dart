import 'package:flutter/material.dart';
import 'package:flutter_application_1/Model/kisi.dart';
import 'package:flutter_application_1/Model/kisi_listesi.dart';

class KisilerWidget extends StatelessWidget {
  List<Kisi> kisiler = KisiListesi.kisiler;
  var clickFonk;
  KisilerWidget(this.clickFonk);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(hintText: "Kişi adı - soyadı"),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: kisiler.length,
              itemBuilder: (context, index) => ListTile(
                onTap: () => clickFonk(index),
                title: Text(kisiler[index].ad),
                subtitle: Text(kisiler[index].soyad),
              ),
            ),
          )
        ],
      ),
    );
  }
}
