import 'dart:io';

import 'package:untitled/nesne_tabanli1/odev2.dart';

void main() {
  var t = Odev2();
  int secim = 0;

  while (secim != 8) {
    print("Lüften birini seçin");
    print("1 - Santigrat~Fahrenhiet Dönüşümü");
    print("2 - Dörtgen çevresi hesaplama");
    print("3 - Faktöriyel değeri hesaplama");
    print("4 - Kelime içinde arama");
    print("5 - İç açılar toplamı hesaplama");
    print("6 - Maaş hesaplama");
    print("7 - Kotaya göre ücret hesapalama");
    print("8 - Çıkış");
    print("Seçim");
    secim = int.parse(stdin.readLineSync()!);

    switch (secim) {
      case 1:
        {
          print("Derece değeri : ");
          print(
              "${t.dereceDonusum(double.parse(stdin.readLineSync()!))} Fahrenheit");
          sleep(Duration(seconds: 2));
        }
        break;
      case 2:
        {
          print("Her bir kenar uzunluğunu tuşlayıp 'Enter'a basın' ");
          print(
              "Çevre : ${t.dortgenCevresi(double.parse(stdin.readLineSync()!), double.parse(stdin.readLineSync()!), double.parse(stdin.readLineSync()!), double.parse(stdin.readLineSync()!))}");
          sleep(Duration(seconds: 2));
        }
        break;
      case 3:
        {
          print("Faktöriyeli hesaplanacak sayıyı tuşlayın:");
          print("Sonuç : ${t.faktoriyel(int.parse(stdin.readLineSync()!))}");
          sleep(Duration(seconds: 2));
        }
        break;
      case 4:
        {
          print("Sırasıyla kelimeyi ve içinde aranacak harfi tuşlayın");
          print(
              "${t.kacAdet(stdin.readLineSync()!, stdin.readLineSync()!)} adet bulundu.");
          sleep(Duration(seconds: 2));
        }
        break;
      case 5:
        {
          print("Kenar sayısını giriniz");
          print(
              "Toplam ${t.icAciToplami(int.parse(stdin.readLineSync()!))} derece");
          sleep(Duration(seconds: 2));
        }
        break;
      case 6:
        {
          print("Çalışılan gün sayını giriniz");
          print(
              "Toplam Maaş : ${t.ucretHesapla(int.parse(stdin.readLineSync()!))} ₺");
          sleep(Duration(seconds: 2));
        }
        break;
      case 7:
        {
          print("Lütfen Kota miktarını tuşlayın");
          print(
              "Toplam : ${t.kotaUcretiHesapla(int.parse(stdin.readLineSync()!))} ₺");
          sleep(Duration(seconds: 2));
        }
        break;
      case 8:
        {
          print("Çıkış yapılıyor...");
          sleep(Duration(seconds: 2));
        }
        break;

      default:
    }
  }
  print("Bitti");
}
