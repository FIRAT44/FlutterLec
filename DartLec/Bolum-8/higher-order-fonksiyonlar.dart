/*
Higher order functions : bir fonksiyonu parametre olarak alan veya geriye fonksiyon döndüren fonksiyonlardır.
* Tabi ikisi aynı anda da yapılabilir.

 */

main(List<String> args) {
  List<int> liste = [1, 2, 3];
  /*liste.forEach((element) {
    print("Element ${element}");
  });*/

  liste.forEach((callback));

  print("=========");
  kendiForEachYapim(liste, (int deger, int index) {
    print("Deger $deger ve index'si: $index");
  });
}

void kendiForEachYapim(List<int> liste, Function callback) {
  for (int i = 0; i < liste.length; i++) {
    callback(liste[i], i);
  }
}

void ismimiSoyle(String name) {
  print(name);
}

void callback(int element) {
  print("Element ${element}");
}
