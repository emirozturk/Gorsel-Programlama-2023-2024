import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/Model/parca.dart';
import 'package:flutter_application_1/Model/parca_listesi.dart';
import 'package:flutter_application_1/parca_widget.dart';

class ParcalarWidget extends StatelessWidget {
  var parcaAdiC = TextEditingController();
  var sanatciAdiC = TextEditingController();

  List<Parca> parcalar = ParcaListesi.parcalar;
  ParcalarWidget();
  @override
  Widget build(BuildContext context) {
    return Column(      
      children: [
        TextField(
          decoration: InputDecoration(hintText: "Parça adı"),
          controller: parcaAdiC,
        ),
        TextField(
          decoration: InputDecoration(hintText: "Sanatçı adı"),
          controller: sanatciAdiC,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: () {
              ParcaListesi.parcalar.add(Parca(
                  id: 0, sanatci: sanatciAdiC.text, isim: parcaAdiC.text));
            },
            child: Row(
              children: [
                Icon(Icons.add),
                Text("Add",style: Theme.of(context).textTheme.bodyMedium,),
              ],
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: parcalar.length,
            itemBuilder: (context, index) => ParcaWidget(parcalar[index],index)
          ),
        )
      ],
    );
  }
}
