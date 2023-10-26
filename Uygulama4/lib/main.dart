import 'package:flutter/material.dart';
import 'package:flutter_application_1/tuslar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Degisimli(),
    );
  }
}

class Degisimli extends StatefulWidget {
  const Degisimli({super.key});

  @override
  State<Degisimli> createState() => DegisimliState();
}

class DegisimliState extends State<Degisimli> {
  var degisken = 0;
  void arttir() {
    setState(() {
      degisken++;
      print(degisken);
    });
  }

  void azalt() {
    setState(() {
      degisken--;
      print(degisken);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("$degisken"),
          Tuslar(arttir: arttir, azalt: azalt),
        ],
      ),
    );
  }
}
