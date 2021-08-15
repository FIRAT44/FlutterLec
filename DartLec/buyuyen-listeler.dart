main(List<String> args) {
  List<int?> sayilar = [];

  sayilar.add(1);
  sayilar.add(2);
  sayilar.add(3);

  sayilar.length = 100;

  print(sayilar);
  print(sayilar.length);

  List<int> sayilar2 = [1, 2, 3];
  sayilar2.add(55);
  print(sayilar2);

  //growable eğer true ise add fonksiyonu kullanılır. Yani liste büyüyebilir.
  List<int> sayilar3 = List.filled(10, 10, growable: true);
  sayilar3.add(55);

  print(sayilar3);

  //growable eğer true ise add fonksiyonu kullanılır. Yani liste büyüyebilir.
  List<int> sayilar4 = List.empty(growable: true);

  print(sayilar4);

}
