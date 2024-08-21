// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'joke.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Joke _$JokeFromJson(Map<String, dynamic> json) => Joke(
      id: json['id'] as String,
      joke: json['joke'] as String,
      category: json['category'] as String,
    );

Map<String, dynamic> _$JokeToJson(Joke instance) => <String, dynamic>{
      'id': instance.id,
      'joke': instance.joke,
      'category': instance.category,
    };
