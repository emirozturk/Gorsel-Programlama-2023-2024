import 'dart:io';

import 'package:flutter/material.dart';
import 'package:uygulama8/dosya_islem.dart';
import 'package:uygulama8/soz.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var first = true;
  var isimController = TextEditingController();
  var sozController = TextEditingController();
  void dosyadanOku(yol) {
    DosyaIslem.dosyadanOku(yol).then((value) {
      setState(() {
        liste = value;
      });
    });
  }

  List<Soz> liste = [];

  void kayitEkle() {
    setState(() {
      var isim = isimController.text;
      var soz = sozController.text;
      var yeniKayit = Soz(isim: isim, soz: soz);
      liste.add(yeniKayit);
      isimController.text = "";
      sozController.text = "";
      DosyaIslem.dosyayaYaz("/Users/emirozturk/Desktop/soz.txt", liste);
    });
  }

  @override
  Widget build(BuildContext context) {
    if (first) {
      dosyadanOku("/Users/emirozturk/Desktop/soz.txt");
      first = false;
    }
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: const InputDecoration(hintText: "İsim"),
              controller: isimController,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: const InputDecoration(hintText: "Söz"),
              controller: sozController,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: kayitEkle,
                    child: const Text("Ekle"),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text("Sil"),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: liste.length,
              itemBuilder: (context, i) => ListTile(
                title: Text(liste[i].isim),
                subtitle: Text(liste[i].soz),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
