import 'package:flutter/material.dart';
import 'package:odev4/sayfa_y.dart';

class SayfaX extends StatefulWidget {
  const SayfaX({super.key});

  @override
  State<SayfaX> createState() => _SayfaXState();
}

class _SayfaXState extends State<SayfaX> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sayfa X')),
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const SayfaY()));
        },
        child: const Text('Sayfa Y'),
      )),
    );
  }
}
