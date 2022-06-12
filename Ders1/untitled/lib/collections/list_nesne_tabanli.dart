import 'package:untitled/collections/ogrenciler.dart';

void main(){

  var o1 = Ogrenciler(no: 5, ad: "Kaan", sinif: "12/C");
  var o2 = Ogrenciler(no: 4586, ad: "Test", sinif: "11/T");
  var o3 = Ogrenciler(no: 711, ad: "ZZZ", sinif: "9/A");

  var ogrencilerListesi = <Ogrenciler>[];

  ogrencilerListesi.add(o1);
  ogrencilerListesi.add(o2);
  ogrencilerListesi.add(o3);

  for(var o in ogrencilerListesi){
    print("No: ${o.no} - Ad : ${o.ad} - Sınıf : ${o.sinif}");
  }

  print("***************************");


  //no ya göre sıralama
  Comparator<Ogrenciler> siralama = (x,y) => x.no.compareTo(y.no);
  ogrencilerListesi.sort(siralama);
  // küçükten büyüğe
  for(var o in ogrencilerListesi){
    print("No: ${o.no} - Ad : ${o.ad} - Sınıf : ${o.sinif}");
  }

  print("***************************");
  //ad a göre sıralama
  Comparator<Ogrenciler> siralama1 = (x,y) => x.ad.compareTo(y.ad);
  ogrencilerListesi.sort(siralama);
  // küçükten büyüğe
  for(var o in ogrencilerListesi){
    print("No: ${o.no} - Ad : ${o.ad} - Sınıf : ${o.sinif}");
  }

  print("***************************");

  Iterable<Ogrenciler> filtreleme = ogrencilerListesi.where((ogrenciNesnesi){
    return ogrenciNesnesi.no > 100;
  });

  ogrencilerListesi = filtreleme.toList();

  for(var o in ogrencilerListesi){
    print("No: ${o.no} - Ad : ${o.ad} - Sınıf : ${o.sinif}");
  }

  print("***************************");

  Iterable<Ogrenciler> filtreleme1 = ogrencilerListesi.where((ogrenciNesnesi){
    return ogrenciNesnesi.ad.contains("K");
  });

  ogrencilerListesi = filtreleme.toList();

  for(var o in ogrencilerListesi){
    print("No: ${o.no} - Ad : ${o.ad} - Sınıf : ${o.sinif}");
  }


}