void main(){
  int yas = 17;
  String isim = "ahmet";

  if(yas >= 18){
    print("reşitsiniz");
  }
  else{
    print("reşit değilsiniz");

  }


  if(isim == "ahmet"){
    print("merhaba ahmet");
  }
  else if(isim == "mehmet"){
    print("merhaba mehmet");
  }
  else{
    print("tanınmayan kişi");
  }


  int sayi1 = 100;
  int sayi2 = 200;

  if(sayi1 > 70 && sayi2 < 300){
    print("and çalıştı");
  }

  if(sayi1 > 50 || sayi2 < 100){
    print("or çalıştı");
  }



}