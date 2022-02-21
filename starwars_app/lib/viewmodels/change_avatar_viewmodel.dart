
import 'package:fluttermoji/fluttermojiFunctions.dart';
import 'package:starwars_app/interfaces/local_storage_interface.dart';

class ChangeAvatarViewModel {

  ILocalStorage storage;

  ChangeAvatarViewModel({required this.storage});

  final FluttermojiFunctions functions = FluttermojiFunctions();

  startAvatar() async {
    String avatarJson = await functions.encodeMySVGtoString();
    if (await isEmpty()) {
      await storage.put(avatarJson, "");
    } else {
      await storage.update(avatarJson, 0);
    }
  }

  isEmpty() async {
    int length = await storage.getAll();
    return length == 0 ? true : false;
  }


}