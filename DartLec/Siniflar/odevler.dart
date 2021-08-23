/*
  Soru 1:
    Cemberdaire isimli sınıf oluşturun . Bu sınıfın yarıçap alan kurucusu olmalı . Ayrıca cevre ve alan hesaplayan metotolar olmalı. Pi sayısı = 3.14.

    Soru 2:
      Ogrenci isimli sınıf oluşturun. Bu sınıfta ogrencinin id'si ve not degeri tutulmalı. 100 elemanlı bir listede id ve not değerlerini rastgele olusturarak 
      bu ogrencileri saklayın ve bu öğrencileri yazdıran method yazın.

*/

import 'dart:math';

void main(List<String> args) {
  CemberDaire deneme = CemberDaire(4);
  print("çevreyi hesapla:  ${deneme.cevreyiHesapla()}");
  print("alani hesapla:  ${deneme.alaniHesapla()}");

  Ogrenci ogr1 = Ogrenci(id: 5, notDegeri: 100);

  List<Ogrenci> tumOgrenciler = List.filled(10, Ogrenci(), growable: false);

  ogrenciListesiniDoldur(tumOgrenciler);

  for (Ogrenci oankiOgreci in tumOgrenciler) {
    print(oankiOgreci);
  }

  print(
      "Tüm öğrencilerin ortalaması: ${ogrencilerinOrtalamsiniHesapla(tumOgrenciler)}");
}

void ogrenciListesiniDoldur(List<Ogrenci> liste) {
  for (int i = 0; i < liste.length; i++) {
    liste[i] =
        Ogrenci(id: Random().nextInt(1000), notDegeri: Random().nextInt(100));
  }
}

double ogrencilerinOrtalamsiniHesapla(List<Ogrenci> liste) {
  int toplam = 0;
  for (Ogrenci oankiOgrenci in liste) {
    toplam = toplam + oankiOgrenci.notDegeri;
  }

  return toplam / liste.length;
}

class CemberDaire {
  int? _yaricap = 1;
  double _PI = 3.14;
  CemberDaire(int yaricap) {
    this._yaricap = yaricap;
    yariCapKontrol = yaricap;
  }

  void set yariCapKontrol(int deger) {
    if (deger > 0) {
      _yaricap = deger;
    } else {
      _yaricap = 1;
    }
  }

  double cevreyiHesapla() {
    return _yaricap! * 2 * _PI;
  }

  double alaniHesapla() {
    return _yaricap! * _yaricap! * _PI;
  }
}

class Ogrenci {
  int id;
  int notDegeri;

  Ogrenci({this.id = 1, this.notDegeri = 1});

  // aşağıdaki kısım nasıl yazılması gerektiğini bize söylüyor.

  @override
  String toString() {
    return "ID : $id Not degeri: $notDegeri";
  }
}
