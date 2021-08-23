// IMMUTABLE DEĞİŞMEZ

main(List<String> args) {
  var str = "emre";
  str = "altunbilek";
  //print(str);

  final String str2 = "emre";
  // yeni bir isim veremeyiz
  //str2 = "altunbilek";

  const String str3 = "emre";
  // yeni bir isim veremeyiz
  //str3 = "altunbilek";

  //final değerleri runtime zamanında aldığımız
  // cosnt değerleri runtime'dan önceki zaman çalışır. Compile zamanı çalışır.

  const sayi = 5;
  final sayi2 = 10;
  final tarih = DateTime.now();
  //const tarih2 = DateTime.now(); // runtime'dan önce çalışır.

  // final liste'ye ekleme yapabiliriz. liste.add(...) yardımı ile.
  final liste1 = [1, 2, 3];
  liste1.add(4);
  final liste2 = [1, 2, 3];
  liste2.add(5);
  if (liste1 == liste2) {
    print("eşit");
  } else {
    print("eşit değil");
  }

  const liste3 = [1, 2, 3];
  // const listeye ekleme yapılamaz
  //liste3.add(6);
  // içeriği aynı olan const listelerin adresi aynıdır. 
  // const listeleri bellek dostudur. 
  // canonicalized
  const liste4 = [1, 2, 3];
  if (liste3 == liste4) {
    print("eşit");
  } else {
    print("eşit değil");
  }

  
}
