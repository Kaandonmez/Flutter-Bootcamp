import 'package:flutter/material.dart';
import 'package:odev4/sayfa_b.dart';

class SayfaA extends StatefulWidget {
  const SayfaA({super.key});

  @override
  State<SayfaA> createState() => _SayfaAState();
}

class _SayfaAState extends State<SayfaA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sayfa A')),
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const SayfaB()));
        },
        child: const Text('Sayfa B'),
      )),
    );
  }
}
