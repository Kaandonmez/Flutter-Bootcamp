import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  int currenIndex = 0, selectedIndex = 0;
  final Widget svg = SvgPicture.asset(
    'assets/svg.svg',
    semanticsLabel: 'YT Logo',
    //fit: BoxFit.contain,
  );

  var textListe = [
    "Spor",
    "80'ler",
    "Enerjik",
    "Rahatlama",
    "Odaklanma",
    "Dünya",
    "2000'ler",
    "Kültürel",
    "Caz",
    "Türkçe Rock"
  ];

  var albumListe = [
    "https://i.ytimg.com/an/hRJTvhDGJKs/05bedfae-948d-4a40-8e55-70fac4c38352_mq.jpg",
    "https://i.scdn.co/image/ab67616d0000b273add7dff50b14f531657c0ee3",
    "https://i.scdn.co/image/ab67616d0000b273ed08f56467f5be69c87956a1",
    "https://i.scdn.co/image/ab67616d00001e022944f8bf9f18b788ca6e815d"
  ];

  var ustYazi = [
    "Süper Mix'im",
    "Günledik Mix",
    "Haftasonu Mix'im",
    "MFÖ Mix'im"
  ];

  var altYazi = ["Barış Manço", "Cem Karaca", "Erkin Koray", "MFÖ"];

  //3d array

  var listem = [
    [
      [
        "https://i.scdn.co/image/ab67616d0000b27351c02a77d09dfcd53c8676d0",
        "Shoot To Thrill",
        "AC/DC"
      ],
      [
        "https://i.scdn.co/image/ab67616d0000b273f929266a60cb640a92749b82",
        "Dönence",
        "Barış Manço"
      ],
      [
        "https://i.scdn.co/image/ab67616d0000b2739ee0dd0ae7e5c49101c99ef4",
        "Sarı Laleler",
        "MFÖ"
      ],
      [
        "https://i.scdn.co/image/ab67616d0000b27300f646a99268781f7210fcf3",
        "Fire",
        "Daniel Lanois"
      ]
    ],
    [
      [
        "https://i.scdn.co/image/ab67616d0000b273712701c5e263efc8726b1464",
        "Dreamland",
        "Glass Animals"
      ],
      [
        "https://i.scdn.co/image/ab67616d0000b273a6125b1964a555892c49ea53",
        "Waterfall",
        "TLC"
      ],
      [
        "https://i.scdn.co/image/ab67616d0000b2735deac769c86ec472147cbe23",
        "Amado Mio",
        "Pink Martini"
      ],
      [
        "https://i.scdn.co/image/ab67616d0000b273d746f0e5e2aa41cd8fd68661",
        "Hit The Ground",
        "Lizz Wright"
      ]
    ]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: svg,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.cast_rounded,
                size: 27,
              )),
          const SizedBox(width: 5),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search_rounded,
                size: 27,
              )),
          const SizedBox(width: 5),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.account_circle_rounded,
                  size: 27,
                )),
          ),
        ],
        leadingWidth: 100,
        backgroundColor: Colors.black,
        //title: Text('Flutter Demo'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: SizedBox(
                height: 30,
                child: ListView.builder(
                  physics: const ClampingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            primary: Colors.white,
                            backgroundColor: Colors.grey[900],
                            side: BorderSide(
                                style: BorderStyle.solid,
                                color: Colors.white.withOpacity(0.18),
                                width: 0.6),
                            surfaceTintColor: Colors.green,
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(13),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            textListe[index],
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          )),
                    );
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text("Sizin için derlenenler",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            fontFamily: 'SourceSansPro-Regular')),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Text("DİĞER",
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.80),
                          fontSize: 14,
                          fontWeight: FontWeight.w900,
                          fontFamily: 'SourceSansPro-Regular')),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 5),
              child: SizedBox(
                height: 181,
                child: ListView.builder(
                  physics: const ClampingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Padding(
                        padding: const EdgeInsets.only(left: 8, right: 8),
                        child: Card(
                          color: Colors.transparent,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                    height: 135,
                                    child: Image.network(albumListe[index])),
                                const SizedBox(height: 2),
                                Text(ustYazi[index],
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w900,
                                        fontFamily: 'SourceSansPro-Regular')),
                                const SizedBox(height: 2),
                                Text(altYazi[index],
                                    style: const TextStyle(
                                        color: Colors.white38,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'SourceSansPro-Regular')),
                              ]),
                        ));
                  },
                ),
              ),
            ),

            //nested listview.builder
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text("BİR ŞARKIDAN RADYO BAŞLATIN",
                    style: TextStyle(
                        letterSpacing: 0.5,
                        color: Colors.white38,
                        fontSize: 13,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'SourceSansPro-Regular')),
              ),
            ),

            const Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text("Hızlı seçimler",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'SourceSansPro-Regular')),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 5),
              child: SizedBox(
                height: 240,
                child: ListView.builder(
                  physics: const ClampingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 1,
                  itemBuilder: (context, index1) {
                    return Padding(
                        padding: const EdgeInsets.only(left: 8, right: 8),
                        child: SizedBox(
                          height: 181,
                          child: ListView.builder(
                            physics: const ClampingScrollPhysics(),
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: 2,
                            itemBuilder: (context, index2) {
                              return Column(
                                children: [
                                  SizedBox(
                                    height: 60,
                                    width: 310,
                                    child: Card(
                                      color: Colors.transparent,
                                      child: Row(
                                        children: [
                                          Image.network(
                                            listem[index2][0][0],
                                          ),
                                          const SizedBox(
                                            width: 13,
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(listem[index2][0][1],
                                                  style: const TextStyle(
                                                      color: Colors.white70)),
                                              Text(listem[index2][0][2],
                                                  style: const TextStyle(
                                                      color: Colors.white38)),
                                            ],
                                          ),
                                          const Spacer(),
                                          IconButton(
                                            onPressed: () {},
                                            icon: const Icon(
                                                Icons.more_vert_sharp,
                                                color: Colors.white,
                                                size: 20),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 60,
                                    width: 310,
                                    child: Card(
                                      color: Colors.transparent,
                                      child: Row(
                                        children: [
                                          Image.network(listem[index2][1][0]),
                                          const SizedBox(
                                            width: 13,
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(listem[index2][1][1],
                                                  style: const TextStyle(
                                                      color: Colors.white70)),
                                              Text(listem[index2][1][2],
                                                  style: const TextStyle(
                                                      color: Colors.white38)),
                                            ],
                                          ),
                                          const Spacer(),
                                          IconButton(
                                            onPressed: () {},
                                            icon: const Icon(
                                                Icons.more_vert_sharp,
                                                color: Colors.white,
                                                size: 20),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 60,
                                    width: 310,
                                    child: Card(
                                      color: Colors.transparent,
                                      child: Row(
                                        children: [
                                          Image.network(listem[index2][2][0]),
                                          const SizedBox(
                                            width: 13,
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(listem[index2][2][1],
                                                  style: const TextStyle(
                                                      color: Colors.white70)),
                                              Text(listem[index2][2][2],
                                                  style: const TextStyle(
                                                      color: Colors.white38)),
                                            ],
                                          ),
                                          const Spacer(),
                                          IconButton(
                                            onPressed: () {},
                                            icon: const Icon(
                                                Icons.more_vert_sharp,
                                                color: Colors.white,
                                                size: 20),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 60,
                                    width: 310,
                                    child: Card(
                                      color: Colors.transparent,
                                      child: Row(
                                        children: [
                                          Image.network(listem[index2][3][0]),
                                          const SizedBox(
                                            width: 13,
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(listem[index2][3][1],
                                                  style: const TextStyle(
                                                      color: Colors.white70)),
                                              Text(listem[index2][3][2],
                                                  style: const TextStyle(
                                                      color: Colors.white38)),
                                            ],
                                          ),
                                          const Spacer(),
                                          IconButton(
                                            onPressed: () {},
                                            icon: const Icon(
                                                Icons.more_vert_sharp,
                                                color: Colors.white,
                                                size: 20),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        ));
                  },
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 20, left: 5),
              child: SizedBox(
                height: 181,
                child: ListView.builder(
                  physics: const ClampingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Padding(
                        padding: const EdgeInsets.only(left: 8, right: 8),
                        child: Card(
                          color: Colors.transparent,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                    height: 135,
                                    child: Image.network(albumListe[index])),
                                const SizedBox(height: 2),
                                Text(ustYazi[index],
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w900,
                                        fontFamily: 'SourceSansPro-Regular')),
                                const SizedBox(height: 2),
                                Text(altYazi[index],
                                    style: const TextStyle(
                                        color: Colors.white38,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'SourceSansPro-Regular')),
                              ]),
                        ));
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 12,
        unselectedFontSize: 12,
        iconSize: 25,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        backgroundColor: const Color(0xff1c1c1c),
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled, color: Colors.white),
            label: "Ana Sayfa",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore_outlined, color: Colors.white),
            label: "Keşfet",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_music_outlined, color: Colors.white),
            label: "Kitaplık",
          ),
        ],
      ),
    );
  }
}
