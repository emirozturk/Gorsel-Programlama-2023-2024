import 'package:flutter/material.dart';
import 'package:uygulama11/rest.dart';
import 'package:uygulama11/user.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
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
  List<User> kisiListesi = [];
  void veriAl() {
    Rest.getUsers().then((value) {
      setState(() {
        kisiListesi = value;
      });
    });
  }

  bool ilk = true;
  @override
  Widget build(BuildContext context) {
    if (ilk) {
      veriAl();
      ilk = false;
    }
    return Scaffold(
      body: Column(
        children: [
          Center(child: Text("REST GET örneği")),
          Expanded(
            child: ListView.builder(
                itemCount: kisiListesi.length,
                itemBuilder: (ctx, i) => ListTile(
                      title: Text(
                          "${kisiListesi[i].firstName} ${kisiListesi[i].lastName}"),
                      subtitle: Text(kisiListesi[i].email),
                      leading: Image.network(kisiListesi[i].avatar),
                    )),
          ),
        ],
      ),
    );
  }
}
