import 'package:flash_blog/features/blog/domain/entities/blog.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../../generated/features/blog/data/models/blog_model.g.dart';

part '../../../../generated/features/blog/data/models/blog_model.freezed.dart';

@freezed
abstract class BlogModel with _$BlogModel implements Blog {
  const factory BlogModel({
    required final String id,
    @JsonKey(name: 'poster_id') required final String posterId,
    required final String title,
    required final String content,
    @JsonKey(name: 'image_url')required final String imageUrl,
    required final List<String> topics,
    @JsonKey(name: 'updated_at') required final DateTime updatedAt,
    @JsonKey(name: 'poster_name') final String? posterName,
  }) = _BlogModel;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id,
    'poster_id': posterId,
    'title': title,
    'content': content,
    'image_url': imageUrl,
    'topics': topics,
    'updated_at': updatedAt.toIso8601String(),
  };

  factory BlogModel.fromJson(final Map<String, dynamic> map) => BlogModel(
    id: map['id'] as String,
    posterId: map['poster_id'] as String,
    title: map['title'] as String,
    content: map['content'] as String,
    imageUrl: map['image_url'] as String,
    topics: List<String>.from(map['topics'] ?? <String>[]),
    updatedAt:
        map['updated_at'] == null
            ? DateTime.now()
            : DateTime.parse(map['updated_at']),
  );
}
