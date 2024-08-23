import 'package:json_annotation/json_annotation.dart';

part 'joke.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Joke {
  final String type;
  final String setup;
  final String category;
  final String delivery;

  const Joke({
    required this.type,
    required this.setup,
    required this.category,
    required this.delivery
  });

  static const empty = Joke(type: '', setup: '', category: '', delivery: '');

  factory Joke.fromJson(Map<String, dynamic> json) => _$JokeFromJson(json);

  Map<String, dynamic> toJson() => _$JokeToJson(this);
}
