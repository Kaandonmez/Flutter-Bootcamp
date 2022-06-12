import 'package:bloc/bloc.dart';
import 'package:kisiler_uygulamasi/repo/kisilerdao_repo.dart';

class KisiDetayCubit extends Cubit<void> {
  KisiDetayCubit() : super(0);

  var krepo = KisilerDaoRepo();

  Future<void> guncelle(int kisi_id, String kisi_ad, String kisi_tel) async {
    await krepo.kisiGuncelle(kisi_id, kisi_ad, kisi_tel);
  }
}
