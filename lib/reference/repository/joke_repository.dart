import 'package:flutter_kokohub/reference/repository/models/model_barrel.dart';
import 'package:flutter_kokohub/reference/repository/service/joke_service.dart';

class JokeRepository {
    final JokeService service;

    JokeRepository({
        required this.service,
    });

    Future<Joke> getJokes() async => service.getJokes();
}