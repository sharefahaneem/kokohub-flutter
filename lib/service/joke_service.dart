import 'dart:convert';
 import 'package:flutter_kokohub/repository/models/joke.dart';
import 'package:flutter_kokohub/repository/models/result_error.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

class JokeService {
  final String baseUrl;
  final Client _httpClient;

  JokeService({
    http.Client? httpClient,
    this.baseUrl = 'https://v2.jokeapi.dev',
  }) : _httpClient = httpClient ?? http.Client();

  Uri getUrl({
    required String url,
    Map<String, String>? extraParameters,
  }) {
    // final queryParameters = <String, String>{
    //   'key': dotenv.get('JOKES_API_KEY'),
    // };
    // if (extraParameters != null) {
    //   queryParameters.addAll(extraParameters);
    // }
    return Uri.parse('$baseUrl/$url');
    // .replace(queryParameters: queryParameters);
  }

  Future<Joke> getJokes() async {
    final response = await _httpClient.get(
      getUrl(url: 'joke/any'),
    );
    if (response.statusCode == 200) {
      if (response.body.isNotEmpty) {
        return Joke.fromJson(
          json.decode(response.body),
        );
      } else {
        throw ErrorEmptyResponse();
      }
    } else {
      throw ErrorGettingJokes('Error getting jokes');
    }
  }
}
