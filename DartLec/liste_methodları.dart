void main(List<String> args) {
  List<int> sayilar = [10, 8, 4, 11, 2];

  if (sayilar.isEmpty) {
    print(sayilar.first);
    print(sayilar.last);
  } else {
    print("Boş mu: " + sayilar.isEmpty.toString());
  }

  print("Ters sıralı ${sayilar.reversed}");

  sayilar.add(23);
  print(sayilar);
  sayilar.remove(4); // verilen elemanı siler
  sayilar.removeAt(1); // index'i verilen elemanı siler
  print(sayilar);

  // sayilar.clear(); // listeyi temizler

  // contains fonksiyonu listede eleman arar

  if (sayilar.contains(11)) {
    print("Listede 11 var");
  } else {
    print("Listede 11 yok");
  }

  // 1. index içindeki sayıyı gösterir
  print(sayilar.elementAt(1));
  sayilar.shuffle(); // sayıları rastgele dağıtır
  print(sayilar);
}
