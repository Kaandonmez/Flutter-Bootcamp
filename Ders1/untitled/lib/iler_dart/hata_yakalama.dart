void main() {
  var liste = <String>[];
  liste.add("kaan");
  liste.add("test");

  try {
    String isim = liste[3];
    print("$isim");
  } catch (e) {
    print("isim bulunamadı");
  }
}
