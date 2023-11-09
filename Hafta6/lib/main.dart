import 'package:flutter/material.dart';
import 'package:flutter_application_1/Model/parca_listesi.dart';
import 'package:flutter_application_1/begeniler_widget.dart';
import 'package:flutter_application_1/kisiler_widget.dart';
import 'package:flutter_application_1/parcalar_widget.dart';

void main() {
  runApp(Uygulama5());
}

class Uygulama5 extends StatefulWidget {
  @override
  State<Uygulama5> createState() => Uygulama5State();
}

class Uygulama5State extends State<Uygulama5> {
  var mod = Brightness.dark;
  void modDegistir() {
    setState(() {
      if (mod == Brightness.dark) {
        mod = Brightness.light;
      } else {
        mod = Brightness.dark;
      }
    });
  }

  int selectedIndex = 0;
  var parcalar = ParcaListesi.parcalar;
  var sayfalar = [BegenilerWidget(), KisilerWidget(null), ParcalarWidget()];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Begeniler",
      home: Scaffold(
        appBar: AppBar(
          leading: ElevatedButton(
            child: Icon(Icons.light),
            onPressed: modDegistir,
          ),
        ),
        body: sayfalar[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Beğeniler",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Kişiler",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.music_note),
              label: "Parçalar",
            ),
          ],
          currentIndex: selectedIndex,
          onTap: (index) => setState(() {
            selectedIndex = index;
          }),
        ),
      ),
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,
          brightness: mod,
        ),
        textTheme: TextTheme(
          bodyMedium: TextStyle(
            fontFamily: "Arial light",
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
