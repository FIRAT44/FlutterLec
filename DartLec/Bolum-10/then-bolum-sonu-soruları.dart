/**
 * Soru
 * Bir fonksiyon yazın, bu fonksiyon aşdığı id parameteresine göre bir kullacı getirsin. Bu işlem 
 * 2 saniye sonunda sonuclanacaktır. Getirilen kişi bilgisi map olacaktır. username ve id yeterli.
 * Getirilen kişi bilgisindeki username değerini kullanarak kişini kurslarını getiren bir fonksiyon yazın.
 * Bu fonksiyon 4 saniye sürecektir ve username değerine ait olan kursları içinde kursların adları 
 * olan bir liste olarak döndürecektir.
 * 
 * Son olarak bu kurslar listendeki ilk elemanı parametere olarak alan ve bu kursa ait bir yorumu döndüren
 * bir fonksiyon yazın bu fonksiyon 1 saniye sürecektir. 
 * 
 */

main(List<String> args) {
  idyeGoreUserGetir(5).then((value) {
    usernameyeGoreKurslariGetir(value['username']).then(
        (value) => kursunIlkYorumlari(value[0]).then((value) => print(value)));
  });
}

Future<String> kursunIlkYorumlari(String kursAdi) {
  return Future<String>.delayed(Duration(seconds: 1), () {
    return "$kursAdi kursu  mükemmel";
  });
}

Future<List<String>> usernameyeGoreKurslariGetir(String username) {
  print("$username adlı kullanıcısının kursları getiriliyor");
  return Future<List<String>>.delayed(Duration(seconds: 4), () {
    return ["Flutter", "Kotlin", "Javascript"];
  });
}

Future<Map<String, dynamic>> idyeGoreUserGetir(int id) {
  print("$id idli kullanıcı getiriliyor");
  return Future<Map<String, dynamic>>.delayed(Duration(seconds: 2), () {
    return {"username": "emre", "id": id};
  });
}
