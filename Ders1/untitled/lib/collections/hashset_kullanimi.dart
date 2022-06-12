import 'dart:collection';

class Tes{
  int no;
  String ad;

  Tes(this.no, this.ad);

  @override
  String toString(){
    return " No: ${this.no} - Ad : ${this.ad}";
  }
}



void main(){
  var plakalar = HashSet.from([16,23,6]);
  var meyveler = HashSet<String>();

  // Değer atama
  meyveler.add("Kiraz");
  meyveler.add("Muz");
  meyveler.add("Portakal");
  print(meyveler);
  meyveler.add("Elma");
  print(meyveler);

  String m = meyveler.elementAt(2);
  print("2. index : $m");



  print("*****************************");

  var t1 = Tes(5, "k");
  var t2 = Tes(5, "k");
  var t3 = Tes(4, "K");
  var tt = HashSet<Tes>();

  tt.add(t1);
  tt.add(t2);
  tt.add(t3);

  tt.toString();





}