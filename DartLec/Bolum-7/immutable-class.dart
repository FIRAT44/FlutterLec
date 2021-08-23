// kurucu method'a const vermek ve olusturduğumuz objeye const değerini vermek aynı içeriğe sahip nesnelerini aynı adreste olmalarını sağlıyor.
main(List<String> args) {
  const Student emre = Student(5, "emre");
  final Student emre2 = const Student(5, "emre");
  var emre3 = const Student(5, "emre");

  if (emre == emre2) {
    print(emre.hashCode);
    print(emre2.hashCode);
    print("eşit");
  } else {
    print("eşit değil");
  }
  if (emre2 == emre3) {
    print(emre2.hashCode);
    print(emre3.hashCode);
    print("eşit");
  } else {
    print("eşit değil");
  }
}

class Student {
  final int id;
  final String isim;

  const Student(this.id, this.isim);
}
