import 'dart:io';
import 'dart:math';

//Ekrandan 10 adet sayı alan ve bu sayıların standart sapmasını ekrana gösteren uygulama
/*
import 'dart:io';
import 'dart:math';
void main() {
  var vals = [];
  var sum = 0.0;
  for (int i = 0; i < 10; i++) {
    print("Sayi:");
    var val = double.parse(stdin.readLineSync()!);
    vals.add(val);
    sum += val;
  }
  var mean = sum / vals.length;
  var vars = 0.0;
  for (int i = 0; i < 10; i++) {
    vars += pow(mean - vals[i], 2);
  }
  print(sqrt(vars));
}
*/
//Ekrandan 5 kişi ve bu kişilerin boy değerlerini alan ve girilen adın boyunu gösteren uygulama
/*
void main() {
  var sozluk = Map<String, int>();
  while (sozluk.length < 2) {
    var ad = stdin.readLineSync()!;
    var boy = int.parse(stdin.readLineSync()!);
    if (!sozluk.containsKey(ad)) {
      sozluk[ad] = boy;
    }
  }
  print("Ad giriniz:");
  var aranan = stdin.readLineSync();
  print(sozluk[aranan]);
}
*/
//Girilen bir metnin her harfi aynı sayıdaysa ekrana "başarılı" yazdıracak bir uygulama
/*
void main() {
  var sozluk = Map<String, int>();
  var kelime = stdin.readLineSync()!;
  for (int i = 0; i < kelime.length; i++) {
    if (!sozluk.containsKey(kelime[i])) {
      sozluk[kelime[i]] = 1;
    } else {
      sozluk[kelime[i]] = sozluk[kelime[i]]! + 1;
    }
  }
  bool flag = true;
  int siradaki = -1;
  for (var eleman in sozluk.keys) {
    int onceki = siradaki;
    siradaki = sozluk[eleman]!;
    if (onceki!=-1 && onceki != siradaki) {
      flag = false;
      break;
    }
  }
  if (flag) {
    print("Başarılı");
  } else {
    print("Başarısız");
  }
}
//Verilen bir liste içerisinde girilen bir sayıdan büyük olan sayıların ortalamasını veren bir uygulama
void main() {
  var vals = [];
  var sum = 0.0;
  for (int i = 0; i < 10; i++) {
    print("Sayi:");
    var val = double.parse(stdin.readLineSync()!);
    vals.add(val);
  }
  var limit = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < 10; i++) {
    if (vals[i] > limit) {
      sum += vals[i];
    }
  }
  print(sum / vals.length);
}
*/
//Bir hava tahmin uygulaması için geçmiş değerleri tutan bir liste, bu listeye ekleme yapacak bir metot ve
//ilk değerleri liste olarak vermek için bir yapıcı içeren bir sınıf yazınız.
//Daha sonra sınıf tahmin metodunda her değerin bir önceki değere göre farkını
//bulup bu farkı son değere uygulayıp tahmin yapacaktır.
//Son değer bir önceki değerden büyükse fark + küçükse - olarak işlem görecektir.
class Tahmin {
  List<double> degerler;
  Tahmin({required this.degerler});
  double tahminEt() {
    var farkOrt = 0.0;
    for (int i = 1; i < degerler.length; i++) {
      farkOrt += (degerler[i] - degerler[i - 1]).abs();
    }
    farkOrt /= degerler.length;
    var son = degerler[degerler.length - 1];
    var birOnceki = degerler[degerler.length - 2];
    if (son - birOnceki > 0) {
      return son + farkOrt;
    } else {
      return son - farkOrt;
    }
  }
}

void main() {
  var tahmin =
      Tahmin(degerler: [5, 6, 6, 5, 5, 4, 5, 7, 10, 5, 4, 3, 3, 3, 4, 5,4]);
  print(tahmin.tahminEt());
}
