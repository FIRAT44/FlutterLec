/**
 * Closure özel bir fonksiyonduri closure ile bir üst kapsamdaki değişkenşerin değerlerinin değiştirebiliriz.
 * 
 */

//lexical variable scope
main(List<String> args) {
  var mainDegiskeni = 1;

  void a() {
    var aDegiskeni = 2;

    void b() {
      var bDegiskeni = 3;
      print(aDegiskeni);
      print(mainDegiskeni);
    }
  }

  var d = topla(10);
  print(d);
  var sonuc = d(5);
  print(sonuc);
  print("======" * 10);
  var dondurulenFonksiyon = topla(3);
  var sonuc2 = dondurulenFonksiyon(4);
  print(sonuc2);
}

// geriye fonksiyon döndürür
Function topla(int eleman) {
  return (int deger) => eleman * deger;
}
