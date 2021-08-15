void main(List<String> args) {
  /* int toplama = sayilariTopla(1 + 2 + 3); // Required parameter için
  print("$toplama");
  int toplama = sayilariTopla(1); // optional için
  print("$toplama"); */
  int toplama =
      sayilariTopla(9, sayi2: 5, sayi3: 8, sayi1: 7); // optional named için
  print("$toplama");

  int hacim = hacimHesapla(boy: 5, en: 3, yukseklik: 4);
  print("Hacim : $hacim");
}

// Required parameter
/* int sayilariTopla(int sayi1, int sayi2, int sayi3) {
  return sayi1 + sayi2 + sayi3;
}
// sayi1 , 2 ve 3 değerlerini girmek zorundayız

// optional
int sayilariTopla(int sayi1, [int sayi2 = 0, int sayi3 = 0]) {
  return sayi1 + sayi2 + sayi3;
} */
// sayi1 girmek zorundayız ancak 2 ve 3 girmesekte default değeri vardır.

// optional named
int sayilariTopla(int sayi4, {int sayi1 = 0, int sayi2 = 0, int sayi3 = 0}) {
  return sayi4 + sayi1 + sayi2 + sayi3;
}
// sayi4' ü girmek zorundayız ancak 1 , 2 ve 3'ü girmek zorunda değiliz. eğer 1 ,2 ve 3'ü girmek istersek isimlerini yazmalıyız.'

int hacimHesapla({required int en, required int boy, int yukseklik = 1}) {
  return en * boy * yukseklik;
}
