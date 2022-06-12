import 'package:untitled/nesne_tabanli2/hayvan.dart';
import 'package:untitled/nesne_tabanli2/kedi.dart';
import 'package:untitled/nesne_tabanli2/kopek.dart';
import 'package:untitled/nesne_tabanli2/memeli.dart';

void main(){
  var hayvan = Hayvan();
  var memeli = Memeli();
  var kedi = Kedi();
  var kopek = Kopek();

  hayvan.sesCikar();
  memeli.sesCikar(); // bir üst(hayvan) sınıftan erişir.

  kedi.sesCikar();
  kopek.sesCikar();



}