import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kisiler_uygulamasi/cubit/anasayfa_cubit.dart';
import 'package:kisiler_uygulamasi/cubit/kisi_detay_cubit.dart';
import 'package:kisiler_uygulamasi/cubit/kisi_kayit_cubit.dart';
import 'package:kisiler_uygulamasi/views/anasayfa.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<KisiKayitCubit>(
          create: (context) => KisiKayitCubit(),
        ),
        BlocProvider<KisiDetayCubit>(
          create: (context) => KisiDetayCubit(),
        ),
        BlocProvider<AnasayfaCubit>(
          create: (context) => AnasayfaCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Anasayfa(),
      ),
    );
  }
}
