void main() {
  //sayısaldan sayısala dönüşüm

  int i = 40;
  double d = 67.43;

  double a = i.toDouble();

  print("$a");

  int sonuc2 = d.toInt();
  print("$sonuc2");

  //! Sayısaldan metine dönüşüm
  String str1 = i.toString();
  print(str1);
  String str2 = d.toString();
  print(str2);

  //metinden sayısala dönüşüm

  String yazi = "34";
  int s1 = int.parse(yazi);
  print(s1);
}
