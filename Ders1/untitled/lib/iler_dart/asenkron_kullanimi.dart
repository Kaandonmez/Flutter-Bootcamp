Future<void> main() async {
  print("Veri alınıyor");
  var ver = await veriTabanindanVeriAl();
  print("$ver");
}

Future<String> veriTabanindanVeriAl() async {
  for (var i = 1; i <= 5; i++) {
    Future.delayed(Duration(seconds: i),
        (() => print("Alınan veri miktarı : % ${i * 20}")));
  }

  return Future.delayed(Duration(seconds: 5), (() => "Veri kümesi ***"));
}
