import 'package:flutter/material.dart';

class Tuslar extends StatelessWidget {
  var ekleme, arama;
  Tuslar({required this.ekleme,required this.arama});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: ekleme,
              child: const Icon(Icons.add),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: arama,
              child: const Icon(Icons.search),
            ),
          ),
        ),
      ],
    );
  }
}
