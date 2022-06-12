void main(){
  //Tanımlama kısmı
  var plakalar = [16,23,6];
  var meyveler = <String>[];



  //Veri ekleme
  meyveler.add("Muz");  //0. index
  meyveler.add("Kiraz"); // 1. index
  meyveler.add("Elma");

  print(meyveler);

  //Güncelleme
  meyveler.removeAt(meyveler.indexOf("Kiraz"));
  print(meyveler);
  meyveler.insert(1, "element");
  print(meyveler);

  String m = meyveler[2];
  print("2. index : ${m}");


for(var m in meyveler){
  print("Sonuç 1 : ${m}");
}


}