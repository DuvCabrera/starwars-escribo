import 'package:flutter/cupertino.dart';
import 'package:starwars_app/services/avatar_dao.dart';
import 'package:starwars_app/viewmodels/change_avatar_viewmodel.dart';

class AvatarProvider extends ChangeNotifier {


  ChangeAvatarViewModel changeAvatarViewModel = ChangeAvatarViewModel(
      storage: AvatarDao());

  fill(){
    changeAvatarViewModel.startAvatar();
  }

}

