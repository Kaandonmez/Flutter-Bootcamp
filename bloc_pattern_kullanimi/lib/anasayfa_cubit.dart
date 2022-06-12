import 'package:bloc_pattern_kullanimi/matematik_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnasayfaCubit extends Cubit<int> {
  AnasayfaCubit() : super(0);

  MatematikRepo matematikRepo = MatematikRepo();

  void topla(String t1, String t2) {
    emit(matematikRepo.mtopla(t1, t2));
  }

  void carpma(String t1, String t2) {
    emit(matematikRepo.mcarpma(t1, t2));
  }

  //
}
