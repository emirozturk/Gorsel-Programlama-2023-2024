import 'package:flutter/material.dart';
import 'package:sqilte/Models/kisi.dart';

class KisiWidget extends StatefulWidget {
  KisiWidget(
      {super.key,
      required this.ekle,
      required this.sil,
      required this.kisiListesi});
  List<Kisi> kisiListesi = [];
  var ekle, sil;

  @override
  State<KisiWidget> createState() => _KisiWidgetState();
}

class _KisiWidgetState extends State<KisiWidget> {
  var secilenIndex;

  var adsoyadController = TextEditingController();

  var sifreController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: const InputDecoration(hintText: "Ad Soyad"),
            controller: adsoyadController,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: const InputDecoration(hintText: "Şifre"),
            obscureText: true,
            controller: sifreController,
          ),
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () =>
                      widget.ekle(adsoyadController.text, sifreController.text),
                  child: const Icon(Icons.add),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () => widget.sil(secilenIndex),
                  child: const Icon(Icons.remove),
                ),
              ),
            ),
          ],
        ),
        Expanded(
            child: ListView.builder(
          itemBuilder: (context, index) => ListTile(
            tileColor: index == secilenIndex ? Colors.redAccent : null,
            title: Text(widget.kisiListesi[index].adsoyad),
            subtitle: Text(widget.kisiListesi[index].id.toString()),
            onTap: () {
              setState(() {
                secilenIndex = index;
                print(secilenIndex);
              });
            },
          ),
          itemCount: widget.kisiListesi.length,
        ))
      ],
    );
  }
}
