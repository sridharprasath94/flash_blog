import 'package:flash_blog/features/blog/domain/entities/blog.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../../../generated/features/blog/presentation/pages/blog_home/blog_home_model.freezed.dart';

@freezed
abstract class BlogHomeModel with _$BlogHomeModel {
  const factory BlogHomeModel({
    required final bool isLoading,
    required final List<Blog> blogs,
  }) = _BlogHomeModel;
}
