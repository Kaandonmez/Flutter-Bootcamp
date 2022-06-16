import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odev7/repo/yapilacakdao_rep.dart';

class YapilacakDetayCubit extends Cubit<void> {
  YapilacakDetayCubit() : super(0);
  var rep = YapilacakDaoRep();

  Future<void> update(int yapilacak_id, String yapilacak_is) async {
    await rep.guncelleYapilacaklar(yapilacak_id, yapilacak_is);
  }
}
