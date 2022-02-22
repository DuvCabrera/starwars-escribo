import 'package:http/http.dart';

import '../datasources.dart';

class RemoteClient extends IRemoteClient {
  final Client client = Client();
  @override
  Future<String> get(String url) async {
    final Response response = await client.get(Uri.parse(url));
    return response.body;
  }
}
