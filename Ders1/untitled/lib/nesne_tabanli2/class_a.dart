import 'package:untitled/nesne_tabanli2/my_interface.dart';

class ClassA implements MyInterface {
  @override
  int degisken = 10;

  @override
  void metod1() {
    print("metot 1");
  }

  @override
  String metod2() {

    return "metot2 çalıştı";
  }




}