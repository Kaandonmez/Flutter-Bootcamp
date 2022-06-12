void main(){
  String str = "hello";

  String? isim = null; //nil = null

  isim = "Kaan";


  //Yöntem 1 : ? null ise çökmez, null ise çalışır.
  print("Sonuç 1 : ${isim?.toUpperCase()}");


  //Yöntem 2 : !
  print("Sonuç 2 : ${isim!.toUpperCase()}");


  //Yöntem 3 : if kontrol
  if(isim != null){
    print("Sonuç 3 : ${isim.toUpperCase()}");
  }
  else{
    print("isim null ve işlem yapılmadı");
  }

}