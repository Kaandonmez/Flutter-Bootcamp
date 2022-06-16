import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:odev7/cubit/yapilacak_detay_cubit.dart';
import 'package:odev7/cubit/yapilacak_kayit_cubit.dart';
import 'package:odev7/cubit/anasayfa_cubit.dart';
import 'package:odev7/views/anasayfa.dart';
//import 'package:bloc/bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => YapilacakKayitCubit()),
        BlocProvider(create: (context) => YapilacakDetayCubit()),
        BlocProvider(create: (context) => AnasayfaCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.teal,
        ),
        home: const Anasayfa(),
      ),
    );
  }
}
