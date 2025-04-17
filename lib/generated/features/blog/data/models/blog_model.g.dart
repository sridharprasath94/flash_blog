// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../features/blog/data/models/blog_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BlogModel _$BlogModelFromJson(Map<String, dynamic> json) => _BlogModel(
  id: json['id'] as String,
  posterId: json['posterId'] as String,
  title: json['title'] as String,
  content: json['content'] as String,
  imageUrl: json['imageUrl'] as String,
  topics: (json['topics'] as List<dynamic>).map((e) => e as String).toList(),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
  posterName: json['posterName'] as String?,
);

Map<String, dynamic> _$BlogModelToJson(_BlogModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'posterId': instance.posterId,
      'title': instance.title,
      'content': instance.content,
      'imageUrl': instance.imageUrl,
      'topics': instance.topics,
      'updatedAt': instance.updatedAt.toIso8601String(),
      'posterName': instance.posterName,
    };
