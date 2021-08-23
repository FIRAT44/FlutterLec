main(List<String> args) {
  double doubleOrtlama = ortalamaBul<double>(5, 5.4);
  double intOrtlama = ortalamaBul<int>(5, 6);
  print("double Ortalama ${doubleOrtlama}");
  print("int Ortalama $intOrtlama");
}

// extends num = num dışındaki objeleri destekleme
double ortalamaBul<T extends num>(T s1, T s2) {
  return (s1 + s2) / 2;
}
