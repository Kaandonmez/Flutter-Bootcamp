import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tasarim_calismasi/odev3.dart';
import 'package:tasarim_calismasi/renkler.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const Anasayfa(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/second': (context) => const Odev3(),
      },
    );
  }
}

class Anasayfa extends StatelessWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: anaRenk,
          title: const Text(
            "Pizza",
            style: TextStyle(fontFamily: "Lobster"),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding:
                  EdgeInsets.only(top: MediaQuery.of(context).size.height / 43),
              child: Text(
                "Beef Cheese",
                style: TextStyle(
                    color: anaRenk, fontSize: 36, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: MediaQuery.of(context).size.height / 43),
              child: Image.asset("assets/pizza_resim.png"),
            )
            // CircleAvatar(
            //   radius: 50,
            //   backgroundImage: AssetImage("assets/pizza_resim.png"),
            //   backgroundColor: Colors.orange.withOpacity(.50),
            // )
            ,
            Padding(
              padding:
                  EdgeInsets.only(top: MediaQuery.of(context).size.height / 43),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Chip(
                    icerik: "Cheese",
                  ),
                  Chip(
                    icerik: "Sausage",
                  ),
                  Chip(
                    icerik: "Olive",
                  ),
                  Chip(
                    icerik: "Pepper",
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("20 min",
                      style: TextStyle(
                          color: yaziRenk2,
                          fontSize: 22,
                          fontWeight: FontWeight.bold)),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text("Delivery",
                        style: TextStyle(
                            color: anaRenk,
                            fontSize: 22,
                            fontWeight: FontWeight.bold)),
                  ),
                  Text(
                    "Meat lover, get read to meet your pizza!",
                    style: TextStyle(
                      color: yaziRenk2,
                      fontSize: 22,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: <Widget>[
                  Text(
                    "\$ 5.98",
                    style: TextStyle(
                      color: anaRenk,
                      fontSize: 44,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const Spacer(),
                  SizedBox(
                    width: 200,
                    height: 50,
                    child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/second');
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: anaRenk,
                        ),
                        child: Text(
                          "ADD TO CART",
                          style: TextStyle(fontSize: 18, color: yaziRenk1),
                        )),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

class Chip extends StatelessWidget {
  String icerik;

  Chip({
    required this.icerik,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
            backgroundColor: anaRenk,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
        child: Text(
          "${icerik}",
          style: TextStyle(color: yaziRenk1),
        ));
  }
}
