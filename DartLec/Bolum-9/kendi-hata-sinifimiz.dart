main(List<String> args) {
  try {
    Ogrenci emre = Ogrenci(-8);
    print(emre);
  } on AgeException catch (e) {
    print(e.mesaj);
  } finally {
    print("program bitti");
  }
}

class AgeException implements Exception {
  String mesaj = "";

  AgeException({this.mesaj = 'Age Exception'});

  @override
  String toString() {
    // TODO: implement toString
    return "Hatanın toSting metodu çalıştı, hata:${mesaj}";
  }
}

class Ogrenci {
  int yas = 0;

  Ogrenci(int yas) {
    if (yas < 0) {
      throw AgeException(mesaj: "Yaş negatif olamaz");
      print("yaş negatif olamaz");
    } else {
      this.yas = yas;
    }
  }
}
