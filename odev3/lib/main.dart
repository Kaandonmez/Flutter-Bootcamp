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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 35,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.transparent,
                    side: const BorderSide(color: Colors.blue, width: 1),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Aktiviteler",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto'),
                  )),
              OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.transparent,
                    side: const BorderSide(color: Colors.blue, width: 1),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Arkadaşlar",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto'),
                  )),
              OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.transparent,
                    side: const BorderSide(color: Colors.blue, width: 1),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "  Geçmiş   ",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto'),
                  )),
              OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.transparent,
                    side: const BorderSide(color: Colors.blue, width: 1),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "    Takip    ",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto'),
                  )),
            ],
          ),
          const Divider(
            indent: 15,
            endIndent: 15,
            height: 15,
            thickness: 0.5,
            color: Colors.blue,
          ),
          const SizedBox(
            height: 0,
          ),
          SizedBox(width: 100, child: Image.asset('assets/prvl2.png')),
          const SizedBox(
            height: 5,
          ),
          const Text("Kaan Dönmez",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto')),
          const Text("@kaandonmez",
              style: TextStyle(
                  fontSize: 12,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto')),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("Yaş : 21 ",
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.teal,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto')),
              Text(" Boy : 174",
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.teal,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto')),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.flag, color: Colors.red[700]),
              const Text("Haftalık hedef : 8000 / 4952 Adım",
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.teal,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto')),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Material(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                color: Colors.cyan.withOpacity(.60),
                child: SizedBox(
                  height: 150,
                  width: 150,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Icon(
                          Icons.hiking,
                          size: 35,
                        ),
                        const Text(
                          "Yürüyüşler",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Roboto'),
                        ),
                        const CircularProgressIndicator(
                          value: 0.3,
                          valueColor: AlwaysStoppedAnimation(Color(0xffffeb3b)),
                          backgroundColor: Color(0xffe53935),
                        ),
                        Row(
                          children: const [
                            Icon(Icons.local_fire_department_rounded,
                                color: Colors.red),
                            Text("Yakılan Kalori : 520",
                                style: TextStyle(
                                    color: Colors.purple,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Roboto')),
                          ],
                        )
                      ]),
                ),
              ),
              Material(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                color: const Color(0xff42a5f5),
                child: SizedBox(
                  height: 150,
                  width: 150,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Icon(
                          Icons.sports_tennis_rounded,
                          size: 35,
                        ),
                        const Text(
                          "Tenis",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Roboto'),
                        ),
                        const CircularProgressIndicator(
                          value: 0.8,
                          valueColor: AlwaysStoppedAnimation(Color(0xffffeb3b)),
                          backgroundColor: Color(0xffe53935),
                        ),
                        Row(
                          children: const [
                            Icon(Icons.local_fire_department_rounded,
                                color: Colors.red),
                            Text("Yakılan Kalori : 82",
                                style: TextStyle(
                                    color: Colors.purple,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Roboto')),
                          ],
                        )
                      ]),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Material(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                color: const Color(0xff0077c2),
                child: SizedBox(
                  height: 150,
                  width: 150,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Icon(
                          Icons.sports_basketball_rounded,
                          size: 35,
                        ),
                        const Text(
                          "Basketbol",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Roboto'),
                        ),
                        const CircularProgressIndicator(
                          value: 0.6,
                          valueColor: AlwaysStoppedAnimation(Color(0xffffeb3b)),
                          backgroundColor: Color(0xffe53935),
                        ),
                        Row(
                          children: const [
                            Icon(Icons.local_fire_department_rounded,
                                color: Colors.red),
                            Text("Yakılan Kalori : 152",
                                style: TextStyle(
                                    color: Colors.purple,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Roboto')),
                          ],
                        )
                      ]),
                ),
              ),
              Material(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                color: const Color(0xff80d6ff),
                child: SizedBox(
                  height: 150,
                  width: 150,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Icon(
                          Icons.sports_golf_rounded,
                          size: 35,
                        ),
                        const Text(
                          "Golf",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Roboto'),
                        ),
                        const CircularProgressIndicator(
                          value: 0.1,
                          valueColor: AlwaysStoppedAnimation(Color(0xffffeb3b)),
                          backgroundColor: Color(0xffe53935),
                        ),
                        Row(
                          children: const [
                            Icon(Icons.local_fire_department_rounded,
                                color: Colors.red),
                            Text("Yakılan Kalori : 480",
                                style: TextStyle(
                                    color: Colors.purple,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Roboto')),
                          ],
                        )
                      ]),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 15, top: 3),
              child: FloatingActionButton.extended(
                backgroundColor: Colors.red,
                onPressed: () {},
                label: const Text("Durdur"),
                icon: const Icon(Icons.stop_circle_rounded),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.green,
        onPressed: () {},
        label: const Text("Aktivite Takibine Başla"),
        icon: const Icon(Icons.play_arrow_rounded),
      ),
    );
  }
}
