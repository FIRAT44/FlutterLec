import 'dart:async';

main(List<String> args) async {
  print("Program başaldı");

  await Future.delayed(Duration(seconds: 0), () {
    print("0 saniyelik işlem");
  });
  print("Program bitti");

  Future<int> toplam = Future(() {
    int toplam = 0;
    for (int i = 0; i < 1000000000; i++) {
      toplam += i;
    }
    throw new Exception("Toplam hesaplanamadı");
    return toplam;
  });

  try {
    int forSonuc = await toplam;
    print("*************** $forSonuc");
  } catch (e) {
    print(e);
  }

  toplam.then((value) => print(value)).catchError((hata) => print(hata));

  //MOCK DATA
  var f2 = Future.value('emre');
  var f3 = Future.error("Hata ile biten future");

  f3.catchError((hata) => print(hata));
}
