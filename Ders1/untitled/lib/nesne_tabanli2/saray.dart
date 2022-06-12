import 'package:untitled/nesne_tabanli2/ev.dart';

class Saray extends Ev {
  int kuleSayisi;

  Saray(this.kuleSayisi,int pencereSayisi) : super(pencereSayisi);
  //super : kalıtım
  //this , self : içinde bulunduğumuz sınıfı temsil eder.
}
