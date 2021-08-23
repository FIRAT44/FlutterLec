// implement anahtar kelimesi ile bieden fazla sınıfı abstract sınf yapabiliriz.

main(List<String> args) {}

abstract class Hayvan {
  void soyutOlmayanMethod() {
    print("Metotun tanımı");
  }
}

abstract class Ucabilenler {
  void fly();
  void test() {
    print("test");
  }
}

abstract class Havlayabilenler {
  void bark();
}

abstract class Kosabilenler {
  void run();
}

class Kopek extends Hayvan implements Havlayabilenler, Kosabilenler {
  @override
  void bark() {
    // TODO: implement bark
  }

  @override
  void run() {
    // TODO: implement run
  }
}

// Ucabilenler sınıfını implements olarak aldığımız için bütün fonksiyonlar override olmalı
// Ucabilenler sınıfını extends yapsaydık test sınıfı yazmazdık.
// Hayvan sınfı içindeki tüm fonksiyonları yazmayız.
class Kus extends Hayvan implements Ucabilenler {
  @override
  void fly() {
    // TODO: implement fly
  }

  @override
  void test() {
    // TODO: implement test
  }
}

class Insan implements Kosabilenler {
  @override
  void run() {
    // TODO: implement run
  }
}
