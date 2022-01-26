import 'package:http/http.dart';
import 'package:http_interceptor/http/intercepted_client.dart';

import 'interceptors/web_interceptor.dart';

final Client client = InterceptedClient.build(interceptors: [LoggingInterceptor()],
    requestTimeout: const Duration(seconds: 5));


const String baseUrl = 'https://swapi.dev/api/';
const String allPeople = 'people/';
const String allFilms = 'films/';

