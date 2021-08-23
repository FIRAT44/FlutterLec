void main(List<String> args) {
  Asker emre = Asker("emre", 34);

  Er hasan = Er("fırat", 22);
  hasan.memleketDegistir("malatya");
  hasan.selamla();
}

class Asker {
  String ad = "Varsayılan";
  int yas = 0;
  String memleket = "Ankara";
  Asker(this.ad, this.yas) {
    print("Asker sınıfının kurucusu çalıştı");
  }

  void selamla() {
    print("Merhaba adım $ad ve yasım $yas , memleket ${memleket}");
  }
}

class Er extends Asker {
  // super ile class'ın üst sınıfına gönderiyor
  Er(String ad, int yas) : super(ad, yas) {
    print("Er sınıfının kurucusu çalıştı");
  }

  void memleketDegistir(String yeniMemleket) {
    super.memleket = yeniMemleket;
  }

  @override
  void selamla() {
    print("er sınıfından selamlar adım: ${super.ad},  memleket:${super.memleket}");
  }
}
