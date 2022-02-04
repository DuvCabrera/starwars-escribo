import 'package:flutter/cupertino.dart';
import 'package:fluttermoji/fluttermojiFunctions.dart';
import 'package:starwars_app/database/dao/avatar_dao.dart';
import 'package:starwars_app/interfaces/local_storage_interface.dart';

class AvatarProvider extends ChangeNotifier{

  final ILocalStorage dao = AvatarDao();

  final FluttermojiFunctions _functions = FluttermojiFunctions();

  FluttermojiFunctions get functions => _functions;


  startAvatar()async {
    String avatarJson = await functions.encodeMySVGtoString();
    if (await isEmpty()) {
      await dao.put(avatarJson, "");
    } else {
      await dao.update(avatarJson, 0);
    }
  }

  isEmpty() async {
    int length = await dao.getAll();
    return length == 0 ? true : false;
  }
}

