void main(List<String> args) {
  Araba honda = new Araba(2020, "Honda", true);
  /* honda.marka = "Honda";
  honda.modelYili = 2020;
  honda.otomatikMi = true; */

  honda.bilgileriSoyle();

  // sadece kurucu method çalıştı. var değişkeni ile de bir sınıf oluşturulur.
  var reno = new Araba(2019, "Reno", false);
  reno.bilgileriSoyle();
  reno.yasHesapla();

  var bmw = Araba(2021, "BMW", true);
  bmw.bilgileriSoyle();
  bmw.yasHesapla();
}

class Araba {
  int? modelYili;
  String? marka;
  bool? otomatikMi;

  // yazmasak bile çalışır. Bu bir kurucu methoddur.
  /* Araba() {
    print("Kurucu Method tetiklendi");
  } */
// her nesne oluştuğunda kurucu method çalışır. ister parametreli olsun ister parametresiz.
  Araba(int modelYili, String marka, bool otomatikMi) {
    this.modelYili = modelYili;
    this.marka = marka;
    this.otomatikMi = otomatikMi;
    print("Kurucu method tetiklendi");
  }

  void bilgileriSoyle() {
    print(
        "Arabanın model yılı ${modelYili}, markası: ${marka}, otomatik mi: ${otomatikMi}");
  }

  void yasHesapla() {
    print("Arabanın yaşı : ${2021 - modelYili!}");
  }
}
