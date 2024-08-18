import 'package:http/http.dart';

class JokeService {
  final String baseUrl;
  final Client _httpClient;

  JokeService({required this.baseUrl, required Client httpClient})
      : _httpClient = httpClient;
}
