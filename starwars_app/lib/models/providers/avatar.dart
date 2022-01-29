import 'package:flutter/cupertino.dart';
import 'package:fluttermoji/fluttermojiFunctions.dart';
import 'package:starwars_app/database/dao/avatar_dao.dart';

class AvatarProvider extends ChangeNotifier{

  final AvatarDao _dao = AvatarDao();

  final FluttermojiFunctions _functions = FluttermojiFunctions();

  FluttermojiFunctions get functions => _functions;

  AvatarDao get dao => _dao;

  startAvatar()async {
    String avatarJson = await functions.encodeMySVGtoString();
    int length = await dao.findAll();
    if (length == 0) {
      await dao.saveAvatar(avatarJson);
    } else {
      await dao.updateAvatar(avatarJson);
    }
  }
}
