import 'dart:convert';

import 'package:http/http.dart';
import 'package:starwars_app/services/web_client.dart';
import 'package:starwars_app/interfaces/http_client_interface.dart';

class HttpClientService implements IHttpClient {
  @override
  Future<Map<String, dynamic>> get(uri) async {
    final Response response = await client
        .get(Uri.parse(uri))
        .timeout(const Duration(seconds: 5));
    return jsonDecode(response.body);
  }

}