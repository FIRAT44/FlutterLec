import 'dart:math';

void main(List<String> args) {}

class VeritabaniIslemleri {
  String _kullaniciAdi = "emre";
  String _sifre = "123456";

  bool? baglan() {
    if (_internetVarMi()) {
      if (_kullaniciAdi == "emre" && _sifre == "123456") {
        return true;
      } else {
        return false;
      }
    }
  }

  VeritabaniIslemleri() {}
  VeritabaniIslemleri.loginWithNameandPassword(
      String kullaniciAdi, String sifre) {
    this._kullaniciAdi = kullaniciAdi;
    this._sifre = sifre;
  }

  bool _internetVarMi() {
    if (Random().nextBool()) {
      return true;
    } else {
      return false;
    }
  }
}
