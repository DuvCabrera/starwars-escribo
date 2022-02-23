import 'package:dependency_module/dependency_module.dart';

import '../datasources.dart';

class RemoteClient extends IRemoteClient {
  final Client client = Client();
  @override
  Future<String> get(String url) async {
    final Response response = await client.get(Uri.parse(url));
    return response.body;
  }
}
