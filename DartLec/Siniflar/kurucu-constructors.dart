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

  var citroen = Araba.markasizKurucuMethod(false, 2015);
  Araba suzuki = Araba.modelYiliOlmayanKurucuMethod(false, "suzuki");
  suzuki.bilgileriSoyle();
  suzuki.yasHesapla();
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

  // isimlendirilmiş kurucu method

  Araba.markasizKurucuMethod(this.otomatikMi, this.modelYili);
  Araba.modelYiliOlmayanKurucuMethod(bool otomatikMi, String marka) {
    this.otomatikMi = otomatikMi;
    this.marka = marka;
  }

  void bilgileriSoyle() {
    print(
        "Arabanın model yılı ${modelYili}, markası: ${marka}, otomatik mi: ${otomatikMi}");
  }

  void yasHesapla() {
    if (modelYili != null)
      print("Arabanın yaşı : ${2021 - modelYili!}");
    else
      print("Arabanın model yılı olmadığından hesaplanamadı");
  }
}
