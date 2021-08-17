void main(List<String> args) {
  Ogrenci emre = Ogrenci(5, "emre");
  Ogrenci hasan = Ogrenci.idSiz("hasan");
  Ogrenci ayse = Ogrenci.factoryKurucusu(-9, "Ayse");

  print(ayse.id);
  print(ayse.isim);
}

class Ogrenci {
  int id = 0;

  String isim = "";

  Ogrenci(this.id, this.isim) {
    print("Varsayılan kurucu çalıştı");
  }

  Ogrenci.idSiz(this.isim) {
    print("İsimlendirilmiş kurucu çalıştı");
  }

  factory Ogrenci.factoryKurucusu(int id, String isim) {
    if (id < 0 || isim.length == 0) {
      return Ogrenci(5, isim);
    } else {
      return Ogrenci(id, isim);
    }
  }
}
