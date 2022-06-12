void main(){
  var ogrenciAdi = "Kaan";
  var ogrenciYas = 24;
  var ogrenciBoyu = 1.73;
  var OgrenciBasharfi = 'K';
  var ogrenciDevamEdiyorMu = true;

  print("Öğrencinin adı $ogrenciAdi 'dır");


  //int,double,bool primitive tip
  //string ise referans tiptir
  //SInıf isimleri büyük harfle başlar

  int urun_id = 12345;
  String urun_adi = "Kol saati";
  int urun_adet = 100;
  double urun_fiyat = 149.99;
  String urun_tedarikci = "rolex";

  print("Ürün id: $urun_id");
  print("Ürün adi: $urun_adi");
  print("Ürün adet: $urun_adet");
  print("Ürün fiyat: $urun_fiyat ₺");
  print("Ürün tedarikçi: $urun_tedarikci");

  int a = 100;
  int b = 200;
  print("ab toplamı = ${a+b}");

  //sabitler -Constant

  int sayi = 30;
  sayi = 40;
  print("$sayi");



  // koşulduğunda hazfızada yer ayrılır.
  final int sonuc = 100;


  // değişken tanımlandığında hafizada yer ayrılır. - Görsel nesne kodlamalarında genellikle kullanılır.
  const double pi = 3.14;

  print("$sonuc");

  print("$pi");






}