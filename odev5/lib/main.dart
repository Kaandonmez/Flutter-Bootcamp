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
  String mainIslem = "0";
  String mainIslem2 = "";
  int sayi1 = 0;
  int sayi2 = 0;
  int sayi3 = 0;

  int state = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
    if (mainIslem.startsWith('0') && mainIslem.length > 1) {
      mainIslem = mainIslem.substring(1);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[900],
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 35,
          ),
          Text("$sayi1 + $sayi2",
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w100,
              )),
          const SizedBox(
            height: 25,
          ),
          Text(
            mainIslem,
            style: TextStyle(
                fontSize: mainIslem.length < 15 ? 50 : 35,
                fontFamily: 'Lato',
                color: Colors.white.withOpacity(.95)),
          ),
          const SizedBox(
            height: 25,
          ),
          Divider(
            color: Colors.blueGrey.shade900,
            thickness: 2,
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              numberButton("1"),
              numberButton("2"),
              numberButton("3"),
              SizedBox(
                width: 100,
                height: 100,
                child: FloatingActionButton(
                  backgroundColor: Colors.red,
                  onPressed: () {
                    setState(() {
                      mainIslem = mainIslem.substring(mainIslem.length);
                      mainIslem = "0";
                      state = 0;
                      sayi1 = 0;
                      sayi2 = 0;
                      sayi3 = 0;
                    });
                  },
                  child: const Icon(Icons.delete_forever_rounded, size: 45),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              numberButton("4"),
              numberButton("5"),
              numberButton("6"),
              SizedBox(
                width: 100,
                height: 100,
                child: FloatingActionButton(
                  backgroundColor: Colors.orange,
                  onPressed: () {
                    setState(() {
                      if (mainIslem.isNotEmpty) {
                        if (mainIslem.length == 1) {
                          mainIslem = "0";
                        } else {
                          mainIslem =
                              mainIslem.substring(0, mainIslem.length - 1);
                        }
                      }
                    });
                  },
                  child: const Icon(
                    Icons.backspace_rounded,
                    size: 40,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              numberButton("7"),
              numberButton("8"),
              numberButton("9"),
              SizedBox(
                width: 100, //MediaQuery.of(context).size.width - 100,
                height: 100,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.transparent),
                    elevation: 8,
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      //string to int

                      if (state == 0) {
                        if (sayi1 != 0) {
                          //mainIslem = "0";
                          sayi1 = int.parse(mainIslem);
                          mainIslem = "0";
                          sayi2 = 0;
                          state = 1;
                        } else {
                          sayi1 = int.parse(mainIslem);
                          mainIslem = "0";
                          state = 1;
                        }
                      } else {
                        if (sayi2 == 0) {
                          sayi2 = int.parse(mainIslem);
                          mainIslem = (sayi1 + sayi2).toString();
                          state = 0;
                        } else {
                          sayi2 = int.parse(mainIslem);
                          mainIslem = (sayi1 + sayi2).toString();
                          sayi1 = sayi1 + sayi2;
                          sayi2 = 0;
                          state = 0;
                          mainIslem = "0";
                        }
                      }
                    });
                  },
                  child: const Text(
                    "+",
                    style: TextStyle(color: Colors.white, fontSize: 80),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 300, //MediaQuery.of(context).size.width - 100,
                height: 100,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.transparent),
                    elevation: 8,
                    backgroundColor: Colors.teal[500],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      mainIslem += "0";
                    });
                  },
                  child: const Text(
                    "0",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 80,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 100, //MediaQuery.of(context).size.width - 100,
                height: 100,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.transparent),
                    elevation: 8,
                    backgroundColor: Colors.purple,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      if (state == 1) {
                        sayi2 = int.parse(mainIslem);
                        mainIslem = (sayi1 + sayi2).toString();
                      } else {
                        sayi2 = int.parse(mainIslem);
                        sayi3 += sayi1 + sayi2;
                        mainIslem = sayi3.toString();
                        state = 0;
                      }
                    });
                  },
                  child: const Text(
                    "=",
                    style: TextStyle(color: Colors.white, fontSize: 80),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  SizedBox numberButton(String sayi) {
    return SizedBox(
      width: 100,
      height: 100,
      child: FloatingActionButton(
        backgroundColor: Colors.teal[500],
        onPressed: () {
          setState(() {
            mainIslem += sayi;
          });
        },
        child: Text(
          sayi,
          style: TextStyle(
            color: Colors.white,
            fontSize: 80,
          ),
        ),
      ),
    );
  }
}
