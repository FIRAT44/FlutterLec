main(List<String> args) {
  Veritabani db = FirebaseDB();

  db.userDelete();
  db.userSave();
  db.urunGuncelle();
  print("=========" * 6);
  userGuncelle(db);
}

void userGuncelle(Veritabani veritabani) {
  veritabani.userUpdate();
}

abstract class Veritabani {
  void userSave();
  void userUpdate();
  void userDelete();
  void urunGuncelle();
}

class OracleDb extends Veritabani {
  @override
  void userDelete() {
    print("OracleDb user silidi");
  }

  @override
  void userSave() {
    print("OracleDb user kaydedildi");
  }

  @override
  void userUpdate() {
    print("OracleDb user güncellendi");
  }

  @override
  void urunGuncelle() {
    print("OracleDb user ürünü güncelledi");
  }
}

class FirebaseDB extends Veritabani {
  @override
  void userDelete() {
    print("FirebaseDB user silidi");
  }

  @override
  void userSave() {
    print("FirebaseDB user kaydedildi");
  }

  @override
  void userUpdate() {
    print("FirebaseDB user güncellendi");
  }

  @override
  void urunGuncelle() {
    print("FirebaseDB user ürünü güncelledi");
  }
}
