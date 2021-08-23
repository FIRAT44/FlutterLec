/*
Static kullanark nesne değil sınıf değişkenleri ve methodları oluşturabiliriz.
Bir sınıfta tanımlanan method ve değişkenlere erişirken mutlaka nesne üretmemiz gerekirdi.
Ama biz bunları static olarak tanımlarsak artık nesne üretmeden bu değerler erişilebilir ve kullanabilirz. Artık 
onlar nesnelerin değil sınıfın method ve değişkenleridir.


Ayrıca static değişkenler kullanılana kadar değer almazlar
, bellekte yer kaplamazlar. Static methodların içinde this anahtar kelimesi kullanılmaz.

Static metotlar içinden nesneye özgü alanlara erişilemezken, nesneye özgü method içinde static değerlere erişilebilir.

 */

main(List<String> args) {
  Matematik m1 = Matematik(50, 20);
  m1.topla();
  m1.cikar();
  print(Matematik.PI);
  Matematik m2 = Matematik(30, 10);
  m2.topla();
  m2.cikar();
  Matematik.sinifAdiniSoyle();
  print("Toplam işlem sayisi ${Matematik.toplamIslemSayisi}");
}

class Matematik {
  //instance variable
  int birincisayi = 0;
  int ikincisayi = 0;
  static int toplamIslemSayisi = 0;

  // class variable
  static double PI = 3.14;
  static void sinifAdiniSoyle() {
    print("Ben matematik sınıfıyım");
  }

  Matematik(this.birincisayi, this.ikincisayi);

  void topla() {
    toplamIslemSayisi++;
    sinifAdiniSoyle();
    print("Toplam = ${birincisayi + ikincisayi} ");
  }

  void cikar() {
    toplamIslemSayisi++;
    print("Toplam = ${birincisayi - ikincisayi} ");
  }
}
