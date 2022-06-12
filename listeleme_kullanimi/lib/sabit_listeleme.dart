import 'package:flutter/material.dart';

class SabitListeleme extends StatefulWidget {
  const SabitListeleme({Key? key}) : super(key: key);

  @override
  State<SabitListeleme> createState() => _SabitListelemeState();
}

class _SabitListelemeState extends State<SabitListeleme> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("sabit listeleme"),
        ),
        body: ListView(
          children: [
            ListTile(
              title: Text("Güneş"),
              subtitle: Text("Güneş Altbaşlık"),
              leading: Icon(Icons.sunny),
              trailing: Icon(Icons.keyboard_arrow_right_rounded),
              onTap: () {
                print("Ay tıklandı");
              },
            ),
            ListTile(
              title: Text("Ay"),
              subtitle: Text("Ay Altbaşlık"),
              leading: Icon(Icons.mode_night_rounded),
              trailing: Icon(Icons.keyboard_arrow_right_rounded),
              onTap: () {
                print("Ay tıklandı");
              },
            ),
            GestureDetector(
              onTap: () {
                print("yıldız tıklandı");
              },
              child: Card(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text("Yıldız"),
                    Spacer(),
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    )
                  ],
                ),
              )),
            ),
          ],
        ));
  }
}
