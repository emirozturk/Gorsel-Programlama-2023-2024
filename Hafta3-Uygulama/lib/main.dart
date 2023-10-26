import 'package:flutter/material.dart';

void main() {
  runApp(Uygulama());
}

class Uygulama extends StatelessWidget {
  var degisken = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(5),
                decoration: const BoxDecoration(
                  color: Colors.pink,
                ),
                child: const Text(
                  "Seni 14'te durduran şey neydi?",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(5),
                child: Text(
                  "-Yılmaz-",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: ElevatedButton(
                      child: const Text("Geri"),
                      onPressed: () {
                        degisken -= 1;
                        print(degisken);
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: ElevatedButton(
                      child: const Text("İleri"),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
