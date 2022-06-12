import 'package:flutter/material.dart';

class AppBarKullanimi extends StatefulWidget {
  const AppBarKullanimi({Key? key}) : super(key: key);

  @override
  State<AppBarKullanimi> createState() => _AppBarKullanimiState();
}

class _AppBarKullanimiState extends State<AppBarKullanimi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              "Text buton",
              style: TextStyle(color: Colors.white),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: () {
              print('info button');
            },
          ),
          IconButton(
            icon: const Icon(Icons.more_vert_rounded),
            onPressed: () {
              print('Daha fazla butonu');
            },
          ),
          PopupMenuButton(
              child: Icon(Icons.more_vert_rounded),
              itemBuilder: (context) => [
                    PopupMenuItem(
                      child: Text("sil"),
                      value: 1,
                    ),
                    PopupMenuItem(
                      child: Text("güncelle"),
                      value: 2,
                    )
                  ],
              onSelected: (menuItemValue) {
                if (menuItemValue == 1) {
                  print('sil');
                } else if (menuItemValue == 2) {
                  print('güncelle');
                }
              }),
        ],
        leading: IconButton(
          icon: const Icon(Icons.dehaze),
          onPressed: () {
            print('Menu butonuna basıldı');
          },
        ),
        title: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text(
            "test",
            style: TextStyle(fontSize: 20),
          ),
          const Text(
            "test1",
            style: TextStyle(fontSize: 10),
          ),
        ]),
        backgroundColor: Colors.red,
      ),
      body: const Center(),
    );
  }
}
