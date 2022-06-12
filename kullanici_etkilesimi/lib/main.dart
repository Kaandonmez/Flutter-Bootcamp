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
  var tfKontrol = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kullanıcı Etkileşimi"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                onPressed: () {
                  //Show snackbar
                  ScaffoldMessenger.of(context).showSnackBar(
                    //define snackbar
                    SnackBar(
                      content: const Text("Silemek istiyor musunuz?"),
                      action: SnackBarAction(
                        label: "Evet",
                        onPressed: () {
                          //define snackbar
                          ScaffoldMessenger.of(context).showSnackBar(
                            //define snackbar
                            const SnackBar(
                              content: Text("Silindi"),
                            ),
                          );
                        },
                      ),
                    ),
                  );
                },
                child: const Text("Snackbar (Varsayılan)")),
            ElevatedButton(
                onPressed: () {
                  //Show snackbar
                  ScaffoldMessenger.of(context).showSnackBar(
                    //define snackbar
                    SnackBar(
                      content: const Text(
                        "İnternet Bağlantısı Yok",
                        style: TextStyle(color: Colors.red),
                      ),
                      backgroundColor: Colors.tealAccent,
                      action: SnackBarAction(
                        label: "  TEKRAR DENE",
                        textColor: Colors.amber,
                        onPressed: () {
                          //define snackbar
                        },
                      ),
                    ),
                  );
                },
                child: const Text("Snackbar (Özel)")),
            ElevatedButton(
                onPressed: () {
                  //Show dialog
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text("Dikkat"),
                        content: const Text("Silmek istiyor musunuz?"),
                        actions: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                child: const Text("Evet"),
                                onPressed: () {
                                  //define dialog
                                  Navigator.of(context).pop();
                                },
                              ),
                              ElevatedButton(
                                child: const Text("Hayır"),
                                onPressed: () {
                                  //define dialog
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          ),
                        ],
                      );
                    },
                  );
                },
                child: const Text("Alert (Varsayılan)")),
            ElevatedButton(
                onPressed: () {
                  //Show dialog
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text("Kayıt işlemi"),
                        content: TextField(
                          controller: tfKontrol,
                          decoration: InputDecoration(
                            labelText: "Kullanıcı Adı",
                            hintText: "Kullanıcı Adı",
                          ),
                        ),
                        backgroundColor: Colors.greenAccent,
                        actions: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                child: const Text("Kaydet"),
                                onPressed: () {
                                  //define dialog
                                  Navigator.of(context).pop();
                                },
                              ),
                              ElevatedButton(
                                child: const Text("İptal"),
                                onPressed: () {
                                  //define dialog
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          ),
                        ],
                      );
                    },
                  );
                },
                child: const Text("Alert (Özel)")),
          ],
        ),
      ),
    );
  }
}
