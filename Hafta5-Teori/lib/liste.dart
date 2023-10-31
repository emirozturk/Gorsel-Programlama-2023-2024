import 'package:flutter/material.dart';
import 'package:flutter_application_1/begeni.dart';
import 'package:flutter_application_1/begeni_listesi.dart';

class Liste extends StatelessWidget {
  List<Begeni> liste = [];
  var secimFonksiyonu;
  Liste(
    this.liste,
    this.secimFonksiyonu,
  );
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: liste.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(liste[index].adSoyad),
          subtitle: Text(liste[index].parca),
          onTap: () => secimFonksiyonu(index),
        );
      },
    );
  }
}
