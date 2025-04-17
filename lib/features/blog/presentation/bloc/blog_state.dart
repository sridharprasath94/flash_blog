part of 'blog_bloc.dart';

@freezed
class BlogState with _$BlogState {
  const factory BlogState.initial() = Initial;
  const factory BlogState.loading() = Loading;
  const factory BlogState.uploadSuccess() = UploadSuccess;
  const factory BlogState.failure(final String message) = Failure;
  const factory BlogState.fetchSuccess(final List<Blog> blogs) = FetchSuccess;
  const factory BlogState.deleteSuccess() = DeleteSuccess;
}
