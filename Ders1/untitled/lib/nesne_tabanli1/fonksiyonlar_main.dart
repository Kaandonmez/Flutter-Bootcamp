import 'package:untitled/nesne_tabanli1/fonksiyonlar.dart';

void main(){

  var f = Fonksiyonlar();

  f.selamla();

  String gelenSonuc = f.selamla1();
  print("Gelen Sonuç : ${gelenSonuc}");

  print("${f.selamla1()}");

  f.selamla2("Test");

  int gelenToplam = f.toplama(10, 20);

  print("GelenToplam : ${gelenToplam}");

}