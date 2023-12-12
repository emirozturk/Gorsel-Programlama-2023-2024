import 'package:flutter/material.dart';
import 'package:sqilte/Models/kisi.dart';

class SozWidget extends StatefulWidget {
  SozWidget(
      {super.key,
      required this.ekle,
      required this.sil,
      required this.kisiListesi});
  List<Kisi> kisiListesi = [];
  var ekle, sil;

  @override
  State<SozWidget> createState() => _SozWidgetState();
}

class _SozWidgetState extends State<SozWidget> {
  var secilenIndex;
  var seciliKisi;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: EdgeInsets.all(8.0),
            child: DropdownButton(
              value: seciliKisi,
              items: widget.kisiListesi
                  .map(
                      (e) => DropdownMenuItem(value: e, child: Text(e.adsoyad)))
                  .toList(),
              onChanged: (value) => setState(() {
                seciliKisi = value;
              }),
            )),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(hintText: "Şifre"),
            obscureText: true,
          ),
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () => widget.ekle(secilenIndex),
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
            title: Text(widget.kisiListesi[index].adsoyad),
            onTap: () => secilenIndex = index,
          ),
          itemCount: widget.kisiListesi.length,
        ))
      ],
    );
  }
}
