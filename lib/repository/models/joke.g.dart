// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'joke.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Joke _$JokeFromJson(Map<String, dynamic> json) => Joke(
      type: json['type'] as String,
      setup: json['setup'] as String,
      category: json['category'] as String,
    );

Map<String, dynamic> _$JokeToJson(Joke instance) => <String, dynamic>{
      'type': instance.type,
      'setup': instance.setup,
      'category': instance.category,
    };
