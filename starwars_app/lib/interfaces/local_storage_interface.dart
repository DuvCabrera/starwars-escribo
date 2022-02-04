abstract class ILocalStorage {
  Future getAll();

  Future put(String key, dynamic value);

  Future delete(int key);

  Future update(String key, dynamic id);
}
