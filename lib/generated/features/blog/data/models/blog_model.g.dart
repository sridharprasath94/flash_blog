// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../features/blog/data/models/blog_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BlogModel _$BlogModelFromJson(Map<String, dynamic> json) => _BlogModel(
  id: json['id'] as String,
  posterId: json['poster_id'] as String,
  title: json['title'] as String,
  content: json['content'] as String,
  imageUrl: json['image_url'] as String,
  topics: (json['topics'] as List<dynamic>).map((e) => e as String).toList(),
  updatedAt: DateTime.parse(json['updated_at'] as String),
  posterName: json['poster_name'] as String?,
);

Map<String, dynamic> _$BlogModelToJson(_BlogModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'poster_id': instance.posterId,
      'title': instance.title,
      'content': instance.content,
      'image_url': instance.imageUrl,
      'topics': instance.topics,
      'updated_at': instance.updatedAt.toIso8601String(),
      'poster_name': instance.posterName,
    };
