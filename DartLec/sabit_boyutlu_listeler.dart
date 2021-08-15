void main(List<String> args) {
  // sabit uzunluklu listelerdir
  List<int> sayilar = List.filled(5, 5, growable: false);
  sayilar[0] = 1;
  sayilar[1] = 2;
  sayilar[2] = 3;
  sayilar[3] = 4;
  sayilar[4] = 5;
  print(sayilar);
  print(sayilar.length);
  print(sayilar[3]);

  List<String> isimler = List.filled(3, "name", growable: false);
  isimler[0] = "Ali";
  isimler[1] = "Mehmet";
  isimler[2] = 2.toString();
  print(isimler);

// herhangi bir veri tipi belirmezsek otomatik olarak dynamic olarak atar
  List karisik = List<dynamic>.filled(5, 0);
  karisik[0] = "emre";
  karisik[1] = 5;
  karisik[2] = false;
  print(karisik);
}
