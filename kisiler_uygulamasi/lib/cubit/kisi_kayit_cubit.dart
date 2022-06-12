import 'package:bloc/bloc.dart';
import 'package:kisiler_uygulamasi/repo/kisilerdao_repo.dart';

class KisiKayitCubit extends Cubit<void> {
  KisiKayitCubit() : super(0);

  var krepo = KisilerDaoRepo();

  Future<void> kayit(String kisiAdi, String kisiTel) async {
    await krepo.kisiKayit(kisiAdi, kisiTel);
  }
}
