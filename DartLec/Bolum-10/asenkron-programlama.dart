import 'dart:io';

main(List<String> args) {
  print("Anne cocuğu ekmek almaya yollar");
  Future<String> sonuc = uzunSurenIslemler();
  sonuc.then((String value) => print(value)).catchError((hata) {
    print(hata);
  }).whenComplete(() => print("ekmek alma operasyonu bitti"));

// aşağıdaki gibi bir kullanımlakullanabiliriz.
/*
  uzunSurenIslemler()
      .then((value) => print(value))
      .catchError((hata) => print(hata))
      .whenComplete(() => print("ekmek alma operasyonu bitti"));
*/
  print("Peynir zeytin hazırlanır");
  sleep(Duration(seconds: 2));
  print("Kahvaltı hazır");
}

Future<String> uzunSurenIslemler() {
  print("Cocuk ekmek almak için evden çıkar");
  Future<String> sonuc = Future.delayed(Duration(seconds: 3), () {
    return "Çocuk ekmekle eve girer";
    throw Exception("Bakkalda ekmek kalmamış");
  });
  return sonuc;
}
