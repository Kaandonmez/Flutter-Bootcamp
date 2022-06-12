class Odev2 {
  double dereceDonusum(double santigrat) {
    return (santigrat * 1.8) + 32;
  }

  double dortgenCevresi(double a, double b, double c, double d) {
    return a + b + c + d;
  }

  int faktoriyel(int sayi) {
    if (sayi >= 1) {
      return sayi * faktoriyel(sayi - 1);
    } else {
      return 1;
    }
  }

  int kacAdet(String kaynak, String aranan) {
    int tane = 0;

    for (var i = 0; i <= kaynak.length - 1; i++) {
      if (kaynak[i].contains(aranan)) {
        tane++;
      }
    }
    return tane;
  }

  int icAciToplami(int kenarSayisi) {
    return (kenarSayisi - 2) * 180;
  }

  int ucretHesapla(int gunSayisi) {
    int mesaiGun;
    int mesaiUcreti;
    late int toplamMaas;
    if (gunSayisi >= 20) {
      mesaiGun = gunSayisi - 20;
      mesaiUcreti = mesaiGun * 8 * 20;
      toplamMaas = mesaiUcreti + (gunSayisi - mesaiGun) * 8 * 10;
    } else {
      toplamMaas = gunSayisi * 8 * 10;
    }

    return toplamMaas;
  }

  int kotaUcretiHesapla(int kota) {
    if (kota <= 50) {
      return 100;
    } else {
      kota = kota - 50;
      return (kota * 4) + 100;
    }
  }
}
