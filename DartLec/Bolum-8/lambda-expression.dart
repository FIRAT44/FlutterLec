/*
Lambda: ismi olmayan fonksiyonlardır. Dartta her fonksiyon aslında bir nesnedir.
 */

main(List<String> args) {
  //Lambda expression
  Function fonksiyon1 = (int a, int b) {
    int toplam = a + b;
    print(toplam);
    return toplam;
  };
  print(fonksiyon1);
  String isim = "emre";
  fonksiyon1(2, 3);

  var f2 = (int s) => s * 2;
  var f3 = (int s2) {
    return s2 * 2;
  };

  var sayi = f2(5);
  print(sayi);
  print(f3(6));
}

// Normal bir fonksiyon
void sayilariTopla(int a, int b) {
  int toplam = a + b;
  print(toplam);
}
