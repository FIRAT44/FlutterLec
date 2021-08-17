import 'musteri.dart';
import 'veritabanı-işlemleri.dart';

void main(List<String> args) {
  VeritabaniIslemleri db = VeritabaniIslemleri();
  VeritabaniIslemleri db2 =
      VeritabaniIslemleri.loginWithNameandPassword("emre", "123456");

  Musteri m1 = Musteri(600);
  m1.bilgileriYazdir();
  m1.musteriNoAta = 952;
  print(m1.musteriNosoyle);
  bool sonuc = db2.baglan()!;
  if (sonuc) {
    print("Bağlandık");
  } else {
    print("bağlanamadın");
  }
}
