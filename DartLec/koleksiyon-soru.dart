import 'dart:math';

void main(List<String> args) {
  var Sehirler = <String>["ankara", "muş", "van", "malatya"];

  /* for (String i in Sehirler) {
    print(i);
  } */

  var bilgisayar = <String, dynamic>{
    "işlemci çekirdek sayısı": 4,
    "ram miktarı": 16,
    "ssd var mı": true
  };

  // for (var i in bilgisayar.keys) {
  //   print("${i}: ${bilgisayar[i]}");
  // }

  var ilk = <String, dynamic>{"il": "istanbul", "plaka": 34, "ilçe sayıs": 30};
  var ikinci = <String, dynamic>{
    "il": "malatya",
    "plaka": 44,
    "ilçe sayıs": 13
  };
  var ucuncu = <String, dynamic>{"il": "ankara", "plaka": 06, "ilçe sayıs": 23};

  List<Map<String, dynamic>> sonuncu = <Map<String, dynamic>>[];

  sonuncu.add(ilk);
  sonuncu.add(ikinci);
  sonuncu.add(ucuncu);

  /* for (int i = 0; i < sonuncu.length; i++) {
    for (String oanki in sonuncu[i].keys) {
      print("${oanki}: ${sonuncu[i][oanki]}");
    }
  }
 */

  var liste1 = List<int>.filled(5, 0);
  var liste2 = List<int>.filled(5, 0);

  for (int i = 0; i < 5; i++) {
    liste1[i] = Random().nextInt(50);
  }
  for (int i = 0; i < 5; i++) {
    liste2[i] = Random().nextInt(50);
  }

  var liste3 = [];

  liste3 = [...liste1, ...liste2];
  Set<int> sonSetYapisi = <int>{};
  print(liste3);
  for (int i = 0; i < 10; i++) {
    liste3[i] = liste3[i] * liste3[i];
  }
  print("================================================================");
  print(liste3);

  for (int gecici in liste3) {
    sonSetYapisi.add(gecici);
  }
  print("================================================================");
  print(sonSetYapisi);

  print("================================================================");
  print(liste3.length);
  print(sonSetYapisi.length);
}
