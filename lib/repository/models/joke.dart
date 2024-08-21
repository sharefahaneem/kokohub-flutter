import 'package:json_annotation/json_annotation.dart';

part 'joke.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Joke {
  final String type;
  final String setup;
  final String category;

  const Joke({
    required this.type,
    required this.setup,
    required this.category,
  });

  static const empty = Joke(type: '', setup: '', category: '');

  factory Joke.fromJson(Map<String, dynamic> json) => _$JokeFromJson(json);

  Map<String, dynamic> toJson() => _$JokeToJson(this);
}
