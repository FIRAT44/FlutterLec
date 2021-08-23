import 'dart:math';

main(List<String> args) {
 
  double deger = kareKokunuAl(-20);
  print("Deger ${deger.toStringAsFixed(2)}");
  
}

double kareKokunuAl(int i) {
  try {
    if (i < 0) {
      throw FormatException("Sayı negatif olamaz ");
    } else {
      return sqrt(i);
    }
  } on FormatException catch (e) {
    print(e.message + "metot içindeyim");
  } finally {
    return 0;
  }
}
