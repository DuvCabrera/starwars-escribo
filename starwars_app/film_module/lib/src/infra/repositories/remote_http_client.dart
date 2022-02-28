abstract class IRemoteHttpClient {
  Future<Map<String, dynamic>> getFilms(String url);
}
