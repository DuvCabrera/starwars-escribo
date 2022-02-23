import 'dart:convert';

import '../../infra/repositories/repositories.dart';
import '../datasources/datasources.dart';

class RemoteHttpClient extends IRemoteHttpClient {
  final IRemoteClient client;

  RemoteHttpClient({required this.client});

  @override
  Future<Map<String, dynamic>> getFilms(String url) async {
    return jsonDecode(await client.get(url));
  }
}
