void main(List<String> args) {
  User user1 = User();
  user1.girisYap();
  NormalUser user2 = NormalUser();
  user2.davetEt();
  user2.girisYap();

  SadeceOkuyabilenNormalUser user3 = SadeceOkuyabilenNormalUser();
  user3.davetEt();
  user3.girisYap();
  user3.adiniSoyle();

  AdminUser user4 = AdminUser();

  User user5 = AdminUser(); // upcasting yukarı çevrim
  User user6 = SadeceOkuyabilenNormalUser(); // upcasting yukarı çevrim

  List<User> tumUserler = [];

  tumUserler.add(user1);
  tumUserler.add(user2);
  tumUserler.add(user3);
  tumUserler.add(user4);
  tumUserler.add(user5);
  print("=========" * 10);
  print(tumUserler);
  print("=========" * 10);
  test(user1);
  test(user2);
  test(user3);
  test(user4);
  test(user5);
}

void test(User kullanici) {
  kullanici.girisYap(); // polimofizm çok biçimlilik
}

class User {
  String email = "";
  String password = "";

  void girisYap() {
    print("user giriş yaptı");
  }

  @override
  String toString() {
    // TODO: implement toString
    return "merhaba kimi çağırdınız? ";
  }
}

class NormalUser extends User {
  void davetEt() {
    print("Normal user arkadaşlarını davet ett,");
  }

  // parent içindeki fonksiyonu ezip kendisindeki fonksiyonu çalıştırır.
  @override
  void girisYap() {
    print("Normal user giriş yaptı");
  }
}

class AdminUser extends User {
  void toplamKullaniciSayisiniGoster() {
    print("Toplam user sayısı 20");
  }
  @override
  void girisYap() {
    print("Admin giriş yaptı");
  }
}

class SadeceOkuyabilenNormalUser extends NormalUser {
  void adiniSoyle() {
    print("ben sadece okuyabilirim");
  }

  @override
  void girisYap() {
    print("Sadece okuyabilen normal user giriş yaptı");
  }
}
