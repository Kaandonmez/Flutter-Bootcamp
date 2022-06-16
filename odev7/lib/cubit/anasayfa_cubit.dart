import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odev7/entity/yapilacaklar.dart';
import 'package:odev7/repo/yapilacakdao_rep.dart';

class AnasayfaCubit extends Cubit<List<Yapilacak>> {
  AnasayfaCubit() : super(<Yapilacak>[]);

  var rep = YapilacakDaoRep();

  Future<void> tumIsleriYukle() async {
    var yapilacakListesi = await rep.tumunuAl();
    emit(yapilacakListesi);
  }

  Future<void> ara(String aramaKelimesi) async {
    var liste = await rep.araYapilacaklar(aramaKelimesi);
    emit(liste);
  }

  Future<void> sil(int yapilacak_id) async {
    await rep.silYapilacaklar(yapilacak_id);
    await tumIsleriYukle();
  }
}
