import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kisiler_uygulamasi/entity/kisiler.dart';
import 'package:kisiler_uygulamasi/repo/kisilerdao_repo.dart';

class AnasayfaCubit extends Cubit<List<Kisiler>> {
  AnasayfaCubit() : super(<Kisiler>[]);

  var krepo = KisilerDaoRepo();
  Future<void> kisileriYukle() async {
    var liste = await krepo.tumKisileriAl();

    emit(liste);
  }

  Future<void> ara(String arama_kelime) async {
    var liste = await krepo.kisiAra(arama_kelime);

    emit(liste);
  }

  Future<void> sil(int kisiId) async {
    await krepo.kisiSil(kisiId);
    await kisileriYukle();
  }
}
