import 'package:json_annotation/json_annotation.dart';

part 'joke.g.dart';


@JsonSerializable(fieldRename: FieldRename.snake)
class Joke {
  final String id;
  final String joke;
  final String category;

  const  Joke({
    required this.id,
    required this.joke,
    required this.category,
  });

  factory Joke.fromJson(Map<String, dynamic> json) => _$JokeFromJson(json);

  Map<String, dynamic> toJson() => _$JokeToJson(this);
}