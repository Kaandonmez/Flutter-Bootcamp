import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odev7/repo/yapilacakdao_rep.dart';

class YapilacakKayitCubit extends Cubit<void> {
  YapilacakKayitCubit() : super(0);
  var rep = YapilacakDaoRep();

  Future<void> record(String yapilacak_is) async {
    await rep.ekleYapilacaklar(yapilacak_is);
  }
}
