void main(List<String> args) {
  Ogrenci emre = new Ogrenci();
  emre.aktifMi = false;
  emre.ogrNo = 45;
  print(emre.aktifMi);
  print("Emre'nin numarası: ${emre.ogrNo}");

  Ogrenci ahmet = new Ogrenci();

  ahmet.ogrNo = 12;
  print("Ahmet'in numarası: ${ahmet.ogrNo}");
}

class Ogrenci {
  int ogrNo = 1;
  String ogrAd = "";
  bool aktifMi = true;

  void dersCalis() {
    print("Öğrenci ders calısıyor");
  }
}
