import 'package:flutter/material.dart';

void main() {
  runApp(Uygulama3());
}

class Uygulama3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,            
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("Lütfen Hoca"),
                  Text("Başka bir cümle"),
                ],
              ),
              Text("Bugün hava çok güzel"),
            ],
          ),
        ),
      ),
    );
  }
}
