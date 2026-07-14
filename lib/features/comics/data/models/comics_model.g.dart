// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comics_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ComicModel _$ComicModelFromJson(Map<String, dynamic> json) => _ComicModel(
  title: json['title'] as String,
  description: json['description'] as String,
  latestChapter: json['latestChapter'] as String,
  thumbnail: json['thumbnail'] as String,
  param: json['param'] as String,
  detailUrl: json['detailUrl'] as String,
);

Map<String, dynamic> _$ComicModelToJson(_ComicModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'latestChapter': instance.latestChapter,
      'thumbnail': instance.thumbnail,
      'param': instance.param,
      'detailUrl': instance.detailUrl,
    };
