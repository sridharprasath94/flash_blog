import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../../../generated/features/blog/presentation/pages/add_new_blog/add_new_blog_model.freezed.dart';

@freezed
abstract class AddNewBlogModel with _$AddNewBlogModel {
  const factory AddNewBlogModel({
    required final bool isLoading,
  }) = _AddNewBlogModel;
}
