import 'dart:collection';

void main(){

  var sayilar = {"Bir" : 1 , "İki" : 2};

  var iller = HashMap<int,String>();

  iller[16] = "Bursa";
  iller[34] = "istanbul";
  print(iller);
  print(sayilar);
  var il = iller.keys;
  print(il);



}