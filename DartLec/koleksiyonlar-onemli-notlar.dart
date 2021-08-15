void main(List<String> args) {
  var listem = <String>[];
  var myMap = <String, dynamic>{"yas": 34};
  var mySet = <String>{"emre", "hasan"};

  var teksayilar = [1, 3, 5];

  var ciftsayilar = [2, 4, 6];
// spreads operator
  var sonListe = [...teksayilar, ...ciftsayilar];

// bu şekilde kullanabiliriz.
  /* sonListe.addAll(teksayilar);
  sonListe.addAll(ciftsayilar); */
  print(sonListe);
  var map1 = {'ad': 'emre'};
  var map2 = {"yas": 34};

  var sonMap = {...map1, ...map2};

  print(sonMap);

  var set1 = {"hasan"};
  var set2 = {"emre"};
  var set3 = {"ayse"};
  var set4 = {"emre"};

  var sonSetYapisi = {...set1, ...set2, ...set3, ...set4};
  print(sonSetYapisi);

}
