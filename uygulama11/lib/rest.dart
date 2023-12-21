import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:uygulama11/user.dart';

class Rest {
  static Future<List<User>> getUsers() async {
    var response =
        await http.get(Uri.parse("https://reqres.in/api/users?page=2"));
    //Böyle bir şey de var: http.post(Uri.parse("https://asd.in/api/user"), body: User(1,"a","a","a","a").toMap());
    var sonuc = jsonDecode(response.body)["data"];
    List<User> sonucListesi = [];
    for (var eleman in sonuc) {
      var yeniUser = User.fromMap(eleman);
      sonucListesi.add(yeniUser);
    }
    return sonucListesi;
  }
}
