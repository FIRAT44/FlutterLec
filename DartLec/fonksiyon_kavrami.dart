void main(List<String> args) {
  int deger = cevreyiHesapla(45, 65);

  print("degerimiz : $deger");

  int cikarma = sayilariCikar(78, 98);
  print("Çıkarma işleminin sonucu $cikarma");
}

cevreyiHesapla(int en, int boy) {
  return en * boy;
}

int sayilariCikar(int ilksayi, int ikincisayi) {
  int sonuc;
  sonuc = (ilksayi < ikincisayi
      ? sonuc = (ikincisayi - ilksayi)
      : sonuc = (ilksayi - ikincisayi));

  return sonuc;
}
