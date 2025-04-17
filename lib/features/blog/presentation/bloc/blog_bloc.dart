import 'dart:io';

import 'package:flash_blog/core/error/failures.dart' as failures;
import 'package:flash_blog/core/usecase/usecase.dart';
import 'package:flash_blog/features/blog/domain/entities/blog.dart';
import 'package:flash_blog/features/blog/domain/usecases/get_all_blogs.dart';
import 'package:flash_blog/features/blog/domain/usecases/upload_blog.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../../generated/features/blog/presentation/bloc/blog_bloc.freezed.dart';

part 'blog_event.dart';

part 'blog_state.dart';

class BlogBloc extends Bloc<BlogEvent, BlogState> {
  final UploadBlog _uploadBlog;
  final GetAllBlogs _getAllBlogs;

  BlogBloc({
    required final UploadBlog uploadBlog,
    required final GetAllBlogs getAllBlogs,
  }) : _uploadBlog = uploadBlog,
       _getAllBlogs = getAllBlogs,
       super(const BlogState.initial()) {
    on<BlogEvent>(
      (final BlogEvent event, final Emitter<BlogState> emit) =>
          emit(const Loading()),
    );
    on<_UploadBlog>(_onBlogUpload);
    on<_FetchAllBlogs>(_onFetchAllBlogs);
  }

  Future<void> _onBlogUpload(
    final _UploadBlog event,
    final Emitter<BlogState> emit,
  ) async {
    await _uploadBlog(
          UploadBlogParams(
            posterId: event.posterId,
            title: event.title,
            content: event.content,
            image: event.image,
            topics: event.topics,
          ),
        )
        .match(
          (final failures.Failure failure) {
            emit(Failure(failure.message));
          },
          (final Blog blog) {
            emit(const UploadSuccess());
          },
        )
        .run();
  }

  Future<void> _onFetchAllBlogs(
    final _FetchAllBlogs event,
    final Emitter<BlogState> emit,
  ) async {
    await _getAllBlogs(NoParams())
        .match(
          (final failures.Failure failure) {
            emit(Failure(failure.message));
          },
          (final List<Blog> blogs) {
            emit(FetchSuccess(blogs));
          },
        )
        .run();
  }
}
