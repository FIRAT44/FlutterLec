void main(List<String> args) {
  Map<String, int> alanKodlari = {"Ankara": 312, "Bursa": 224, "istanbul": 212};

  print(alanKodlari);
  print(alanKodlari["Ankara"]);

  Map<String, dynamic> emre = {
    "soyad": "altunbilek",
    "yas": 34,
    "bekarMi": true,
  };

  print(emre["yas"]);

  Map<String, dynamic> deneme = Map();
  Map<String, dynamic> deneme2 = {};

  print(deneme);
  deneme2['yas'] = 65;

  for (String oankiAnahtar in emre.keys) {
    print(oankiAnahtar);
    print(emre[oankiAnahtar]);
  }
  print("\n================================");
  for (dynamic deger in emre.values) {
    print(deger);
  }
  print("\n================================");

  for (var element in emre.entries) {
    print("Key  ${element.key} değeri : ${element.value}");
  }
 print("\n================================");
  if(emre.containsKey("yas")){
    print("Bulunan yas değeri ${emre["yas"]}");
  }
}
