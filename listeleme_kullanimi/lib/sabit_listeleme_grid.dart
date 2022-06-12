import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SabitListelemeGrid extends StatefulWidget {
  const SabitListelemeGrid({Key? key}) : super(key: key);

  @override
  State<SabitListelemeGrid> createState() => _SabitListelemeGridState();
}

class _SabitListelemeGridState extends State<SabitListelemeGrid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("sabit listeleme"),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 2 / 1,
          children: [
            GestureDetector(
              onTap: () {
                print("Güneş tıklandı");
              },
              child: Card(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.wb_sunny_rounded,
                      color: Colors.yellow,
                    ),
                    Text("Güneş")
                  ],
                ),
              )),
            ),
            GestureDetector(
              onTap: () {
                print("Ay tıklandı");
              },
              child: Card(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.mode_night_rounded,
                      color: Colors.blueGrey,
                    ),
                    Text("Ay")
                  ],
                ),
              )),
            ),
            GestureDetector(
              onTap: () {
                print("yıldız tıklandı");
              },
              child: Card(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Text("Yıldız")
                  ],
                ),
              )),
            ),
          ],
        ));
  }
}
