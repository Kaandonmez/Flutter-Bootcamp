import 'package:untitled/nesne_tabanli1/araba.dart';

void main(){
  //nesne oluşturma
  var bmw = Araba(renk: "Mavi", hiz: 200, calisiyorMu: true);

  bmw.bilgiAl();
  bmw.hiz = 100;
  bmw.bilgiAl();
  bmw.durdur();
  bmw.bilgiAl();
  bmw.calistir();
  bmw.bilgiAl();
  bmw.hizlan(50);
  bmw.bilgiAl();

  var limuzin = Araba(renk: "Siyah", hiz: 0, calisiyorMu: false);

  limuzin.bilgiAl();
  limuzin.calistir();
  limuzin.bilgiAl();
  limuzin.yavasla(2);
  limuzin.bilgiAl();


}