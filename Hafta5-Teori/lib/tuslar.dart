import 'package:flutter/material.dart';

class Tuslar extends StatelessWidget {
  var ekleme, arama, silme;
  Tuslar({required this.ekleme, required this.arama, required this.silme});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: ekleme,
              child: const Icon(Icons.add),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: arama,
              child: const Icon(Icons.search),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: silme,
              child: const Icon(Icons.delete_sweep_sharp),
            ),
          ),
        ),
      ],
    );
  }
}
