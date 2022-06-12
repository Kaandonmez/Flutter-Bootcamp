class Fonksiyonlar {

  int x = 10;
  late int y;

  Fonksiyonlar(){
    print("test123");
  }


  void selamla(){
    String sonuc = "Merhaba Kaan";
    print(sonuc);
  }

  String selamla1(){
    String sonuc = "Merhaba Kaan";
    return sonuc;
  }

  void selamla2(String isim){
    String sonuc = "Merhaba ${isim}";
    print(sonuc);
  }

  int toplama(int sayi1, int sayi2){

    int toplam = sayi1 + sayi2;
    return toplam;
  }





}