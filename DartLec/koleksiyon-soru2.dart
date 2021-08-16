import 'dart:io';

void main(List<String> args) {
  var liste = <int>[];

  //int? numara = int.parse(stdin.readLineSync()!);

  var sayilar = 0;
  int toplam = 0;
  while (sayilar != -1) {
    print("Lütfen notunuzu giriniz , çıkış için -1");
    sayilar = int.parse(stdin.readLineSync()!);
    if (sayilar != -1) liste.add(sayilar);
  }

  for (int i = 0; i < liste.length; i++) {
    toplam += liste[i];
  }
  print("Girilen notların toplamı : ${toplam}");
  print("Kaç tane not girildi ${liste.length}");
  print("Notların ortalaması : ${toplam / liste.length}");
}
