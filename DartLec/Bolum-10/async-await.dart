main(List<String> args) {
  print("İnternetten kişi verisi getirilecek");
  kisiileIlgiliIslemler();
  print("Başka işler yapılacak");
  print("işlem bitti");
}

void kisiileIlgiliIslemler() async {
  String kisi = await kisiVerisiniGetir();

  print(kisi.length);
}

Future<String> kisiVerisiniGetir() {
  return Future<String>.delayed(Duration(seconds: 3), () {
    return "Kişi adı : Emre ve id:100";
  });
}
