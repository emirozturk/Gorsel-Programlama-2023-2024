import 'package:flutter/material.dart';
import 'package:sqilte/kisi_widget.dart';
import 'package:sqilte/soz_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
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
  var currentIndex = 0;
  var first = true;
  List<Kisi> kisiListesi = [];

  void kisiEkle(adSoyad, sifre) {}

  void kisiSil(int index) {}

  void sozEkle() {}
  void sozSil() {}
  void listele() {}

  List<Widget> widgetListesiFunc() => [
        KisiWidget(
          ekle: kisiEkle,
          sil: kisiSil,
          kisiListesi: kisiListesi,
        ),
        SozWidget(
          ekle: sozEkle,
          sil: sozSil,
          kisiListesi: kisiListesi,
        )
      ];
  @override
  Widget build(BuildContext context) {
    if (first) {
      first = false;
      listele();
    }
    var widgetListesi = widgetListesiFunc();
    return Scaffold(
      body: Container(
        child: widgetListesi[currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            label: "Kişi",
            icon: Icon(Icons.people),
          ),
          BottomNavigationBarItem(
            label: "Söz",
            icon: Icon(Icons.lyrics),
          ),
        ],
        currentIndex: currentIndex,
        onTap: (value) => setState(() {
          currentIndex = value;
        }),
      ),
    );
  }
}
