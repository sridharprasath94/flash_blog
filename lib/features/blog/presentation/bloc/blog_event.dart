part of 'blog_bloc.dart';

@freezed
class BlogEvent with _$BlogEvent {
  const factory BlogEvent.started() = _Started;
  const factory BlogEvent.uploadBlog({
    required final String posterId,
    required final String title,
    required final String content,
    required final File image,
    required final List<String> topics,
  }) = _UploadBlog;
  const factory BlogEvent.fetchAllBlogs() = _FetchAllBlogs;
}
