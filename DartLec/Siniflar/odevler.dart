/*
  Soru 1:
    Cemberdaire isimli sınıf oluşturun . Bu sınıfın yarıçap alan kurucusu olmalı . Ayrıca cevre ve alan hesaplayan metotolar olmalı. Pi sayısı = 3.14.

    Soru 2:
      Ogrenci isimli sınıf oluşturun. Bu sınıfta ogrencinin id'si ve not degeri tutulmalı. 100 elemanlı bir listede id ve not değerlerini rastgele olusturarak 
      bu ogrencileri saklayın ve bu öğrencileri yazdıran method yazın.

*/

void main(List<String> args) {
  CemberDaire deneme = CemberDaire(3);
  print(deneme.cevreyiHesapla());
  print(deneme.alaniHesapla());
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
