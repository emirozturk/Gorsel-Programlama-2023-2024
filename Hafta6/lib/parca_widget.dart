import 'package:flutter/material.dart';
import 'package:flutter_application_1/Model/parca.dart';

class ParcaWidget extends StatelessWidget {
  Parca parca;
  int index;
  ParcaWidget(this.parca, this.index);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(parca.isim,style: Theme.of(context).textTheme.bodyMedium,),
      subtitle: Text(parca.sanatci,style: Theme.of(context).textTheme.bodyMedium),
      leading: Image.asset(
        "assets/images/$index.jpg",
        width: 50,
        height: 50,
      ),
    );
  }
}
