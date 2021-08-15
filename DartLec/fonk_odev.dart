void main(List<String> args) {
  int cift = ciftsayi(sayi: 15);
  print("çift sayı toplamı: $cift");

  print("------------------------");

  double alan = alanHesapla(yaricap: 2);
  print("daire alanı: $alan");

  print("------------------------");
  ucgenturu(2, 4, 3);
}

int ciftsayi({required int sayi}) {
  int toplam = 0;
  for (int i = 0; i < sayi; i++) {
    if (i % 2 == 0) {
      toplam += i;
    }
  }
  return toplam;
}

double alanHesapla({required int yaricap, double pi = 3.14}) {
  return pi * (yaricap * yaricap);
}

void ucgenturu(int a, int b, int c) {
  if (a == b && a == c && b == c) {
    print("eşkenar");
  } else if (a != b && a != c && b != c) {
    print("çeşit kenar");
  } else
    print("ikizkenar");
}
