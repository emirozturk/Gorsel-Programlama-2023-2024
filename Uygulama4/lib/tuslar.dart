import 'package:flutter/material.dart';

class Tuslar extends StatefulWidget {
  var arttir;
  var azalt;
  @override
  State<Tuslar> createState() => _TuslarState();
  Tuslar({this.arttir, this.azalt});
}

class _TuslarState extends State<Tuslar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          child: const Text("Arttır"),
          onPressed: widget.arttir,
        ),
        ElevatedButton(
          onPressed: widget.azalt,
          child: const Text("Azalt"),
        ),
      ],
    );
  }
}
