import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  String alinanVeri = "";
  String resimAdi = "kadayif";

  int radioDeger = 0;
  double ilerleme = 50.0;

  var tfController = TextEditingController();
  var tfSaat = TextEditingController();
  var tfTarih = TextEditingController();

  var ulkelerListesi = <String>[];
  String secilenUlke = "Türkiye";

  bool switchKontrol = false;
  bool checkboxKontrol = false;
  bool progressKontrol = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ulkelerListesi.addAll(["Türkiye", "İtalya", "Almanya", "İspanya"]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Widget Kullanımı")),
      body: SingleChildScrollView(
        child: Center(
          child: Column(children: [
            Text(alinanVeri),
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: TextField(
                decoration: InputDecoration(hintText: "test"),
                keyboardType: TextInputType.number,
                obscureText: true,
                controller: tfController,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  alinanVeri = tfController.text;
                });
              },
              child: Text("Gönder"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        resimAdi = "kofte";
                      });
                    },
                    child: Text("Resim 1")),
                //Image.asset("assets/$resimAdi"),
                SizedBox(
                  width: 100,
                  height: 100,
                  child: Image.network(
                      "http://kasimadalan.pe.hu/yemekler/resimler/$resimAdi.png"),
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        resimAdi = "baklava";
                      });
                    },
                    child: Text("Resim 2")),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 160,
                  child: SwitchListTile(
                      title: Text("Switch"),
                      controlAffinity: ListTileControlAffinity.leading,
                      value: switchKontrol,
                      onChanged: (veri) {
                        setState(() {
                          switchKontrol = veri;
                          print("Switch: $veri");
                        });
                      }),
                ),
                SizedBox(
                  width: 135,
                  child: CheckboxListTile(
                      title: Text("Flutter"),
                      controlAffinity: ListTileControlAffinity.leading,
                      value: checkboxKontrol,
                      onChanged: (bool? veri) {
                        setState(() {
                          checkboxKontrol = veri!;
                          print("CheckboxListTile: $veri");
                        });
                      }),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 135,
                  child: RadioListTile(
                      title: Text("Radio 1"),
                      value: 1,
                      groupValue: radioDeger,
                      onChanged: (int? veri) {
                        setState(() {
                          radioDeger = veri!;
                          print("RadioListTile: $veri");
                        });
                      }),
                ),
                SizedBox(
                  width: 135,
                  child: RadioListTile(
                      title: Text("Radio 2"),
                      value: 2,
                      groupValue: radioDeger,
                      onChanged: (int? veri) {
                        setState(() {
                          radioDeger = veri!;
                          print("RadioListTile: $veri");
                        });
                      }),
                ),
                SizedBox(
                  width: 135,
                  child: RadioListTile(
                      title: Text("Radio 3"),
                      value: 3,
                      groupValue: radioDeger,
                      onChanged: (int? veri) {
                        setState(() {
                          radioDeger = veri!;
                          print("RadioListTile: $veri");
                        });
                      }),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        progressKontrol = true;
                      });
                    },
                    child: Text("Başla")),
                //Image.asset("assets/$resimAdi"),
                SizedBox(
                  width: 100,
                  height: 100,
                  child: //progress circle
                      Visibility(
                    visible: progressKontrol,
                    child: CircularProgressIndicator(),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        progressKontrol = false;
                      });
                    },
                    child: Text("Bitir")),
              ],
            ),
            Text("İlerleme : ${ilerleme.toInt()}"),
            Slider(
              value: ilerleme,
              min: 0.0,
              max: 100.0,
              onChanged: (double deger) {
                setState(() {
                  ilerleme = deger;
                });
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 100,
                  child: TextField(
                    controller: tfSaat,
                    decoration: InputDecoration(hintText: "Saat"),
                  ),
                ),
                IconButton(
                    onPressed: () {
                      showTimePicker(
                              context: context, initialTime: TimeOfDay.now())
                          .then((TimeOfDay? tarih) {
                        if (tarih != null) {
                          setState(() {
                            tfSaat.text = tarih.format(context);
                          });
                        }
                      });
                    },
                    icon: Icon(Icons.access_time_rounded)),
                SizedBox(
                  width: 100,
                  child: TextField(
                    controller: tfTarih,
                    decoration: InputDecoration(hintText: "Tarih"),
                  ),
                ),
                IconButton(
                    onPressed: () {
                      showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2000),
                              lastDate: DateTime(2030))
                          .then((value) {
                        setState(() {
                          if (value != null) {
                            tfTarih.text =
                                "${value.day.toString()}/${value.month.toString()}/${value.year.toString()}";
                          }
                        });
                      });
                    },
                    icon: Icon(Icons.calendar_month)),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 100,
              child: DropdownButton(
                  value: secilenUlke,
                  icon: Icon(Icons.arrow_drop_down),
                  items: ulkelerListesi.map<DropdownMenuItem<String>>((value) {
                    return DropdownMenuItem(value: value, child: Text(value));
                  }).toList(),
                  onChanged: (String? secilenVeri) {
                    setState(() {
                      secilenUlke = secilenVeri!;
                    });
                  }),
            ),
            GestureDetector(
              onDoubleTap: () {
                print("çift tıklama");
              },
              onTap: () {
                print("tıklama");
              },
              child: Container(
                width: 200,
                height: 100,
                color: Colors.blue,
                child: Center(
                  child: Text("GestureDetector"),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
