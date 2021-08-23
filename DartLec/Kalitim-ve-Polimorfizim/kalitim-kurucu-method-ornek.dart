void main(List<String> args) {
  Kisi emre = Kisi("emre", 34);
  Calisan ali = Calisan("ali", 45, 3000);
  ali.kendiniTanit();
}

// alt sınıftan bir method çağırmak istiyoruz lakin kurucu method String ve int istiyor.
// Not: mutlaka ilk önce üst method ve onun kurucu methodu çalışır.

class Kisi {
  String isim;
  int yas;

  Kisi(this.isim, this.yas);

  void kendiniTanit() {
    print("Benim adım ${isim} ve yaşım ${yas}");
  }
}

class Calisan extends Kisi {
  int maas;
  Calisan(String name, int age, this.maas) : super(name, age);

  @override
  void kendiniTanit() {
    super.kendiniTanit();
    print("aldığım maaş: ${maas}");
    //print("Benim adım ${isim} ve yaşım ${yas} aldığım maaş: ${maas}");
  }
}
