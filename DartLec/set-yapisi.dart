void main(List<String> args) {
  // Set yapılarında aynı değeri yada ismi kaç kere girmiş olalılm sonuç olarka bir kez yazdırır.
  // Set yapıları içinde değerler sırasız saklanır. belirli bir index numarası yok. sırasız saklanır.
  Set<String> isimler = Set();
  isimler.add("emre");
  isimler.add("ayşe");
  isimler.add("ali");
  isimler.add("ayşe");
  isimler.add("emre");
  isimler.add("ayşe");
  isimler.add("ali");
  isimler.add("ayşe");

  print(isimler);

  for (String s1 in isimler) {
    print("isim $s1");
  }

  if (isimler.contains("emre")) {
    print("emre var");
  }

  bool sonuc = isimler.remove("emre");
  print("emre ismi silindi mi: $sonuc");

  print("***************************");
  Set<int> numaralar = Set.from([1, 2, 3, 4, 5, 1, 2, 3, 4]);
  print(numaralar);

  List<int> ciftSayilar = [0, 2, 4, 6, 8, 10, 12];

  numaralar.addAll(ciftSayilar);

  print(numaralar);
}
