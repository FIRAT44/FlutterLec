/*
Abstract soyut sınıf: Sınıflar arasında soyutlama yapmak için kullanılır.
Abstract sınıflardan nesne üretilemez, Abstract sınıflarda normal ve Abstract methodlar olur.
Abstract methodlar alt sınıflarca override edilmek zorundadır.

Bir sınıfta bir tane Abstract method varsa o sınıf mutlaka Abstract tanımlamalıdır.
*/

void main(List<String> args) {
  Sekil s1 = Kare(6);

  print(s1.alanHesapla());
  print(s1.cevreHesapla());
  s1.selamla();
  print("================================================================");
  Dikdortgen s2 = Dikdortgen(10, 5);

  print(s2.cevreHesapla());
  print(s2.alanHesapla());
  s2.selamla();

  List<Sekil> tumSekiller = [];
  tumSekiller.add(s1);
  tumSekiller.add(s2);
  print("================================================================");
  test(s1);
  test(s2);
}

void test(Sekil sekil) {
  sekil.selamla();
}

abstract class Sekil {
  double alanHesapla();
  double cevreHesapla();

  void selamla() {
    print("Ben şekil sınıfıyım");
  }
}

class Kare extends Sekil {
  int kenar;
  Kare(this.kenar);
  @override
  double alanHesapla() {
    return kenar * kenar.toDouble();
  }

  @override
  double cevreHesapla() {
    return kenar * 4.toDouble();
  }

  @override
  void selamla() {
    // TODO: implement selamla
    super.selamla();
    print("Ayrıca ben bir kareyim");
  }
}

class Dikdortgen extends Sekil {
  int uzunKenar;
  int kisaKenar;
  Dikdortgen(
    this.uzunKenar,
    this.kisaKenar,
  );

  @override
  double alanHesapla() {
    return kisaKenar * uzunKenar.toDouble();
  }

  @override
  double cevreHesapla() {
    return 2 * (kisaKenar + uzunKenar.toDouble());
  }

  @override
  void selamla() {
    // TODO: implement selamla
    super.selamla();
    print("Ayrıca Ben bir dikdörtgenim");
  }
}
