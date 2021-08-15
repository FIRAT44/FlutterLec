import 'dart:io';

void main(List<String> args) {
  /* int deger = 45;
  
  if (5 < 6) {
    print("hi $deger");
  } */

  /* int sayi1 = 7;
  var sayi2 = 6;
  int kucuksayi;

  sayi1 < sayi2 ? kucuksayi = sayi1 : kucuksayi = sayi2;

  print("$kucuksayi"); */

  String? ad = null;

  String? soyad = "Tanır";

  String mesaj;
  /* if (ad == null) {
    mesaj = soyad;
  } else {
    mesaj = ad;
  } */
  mesaj = (ad == null ? mesaj = soyad : mesaj = ad);

  print("Sayın: $mesaj");
  print("isminizi giriniz");
  String? name = stdin.readLineSync();

  print("ismim: $name");

  print("yaşınızı giriniz");
  int? yas = int.parse(stdin.readLineSync()!);

  print("yaşınız: $yas");
}
