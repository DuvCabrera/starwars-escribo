abstract class IRemoteHttpClient {
  Future<Map<String, dynamic>> getCharacter(String url);
}
