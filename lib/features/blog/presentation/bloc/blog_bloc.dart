import 'dart:io';

import 'package:flash_blog/core/error/failures.dart' as failures;
import 'package:flash_blog/core/usecase/usecase.dart';
import 'package:flash_blog/features/blog/domain/entities/blog.dart';
import 'package:flash_blog/features/blog/domain/usecases/delete_blog.dart';
import 'package:flash_blog/features/blog/domain/usecases/get_all_blogs.dart';
import 'package:flash_blog/features/blog/domain/usecases/upload_blog.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../../generated/features/blog/presentation/bloc/blog_bloc.freezed.dart';

part 'blog_event.dart';

part 'blog_state.dart';

class BlogBloc extends Bloc<BlogEvent, BlogState> {
  final UploadBlog _uploadBlog;
  final GetAllBlogs _getAllBlogs;
  final DeleteBlog _deleteBlog;

  BlogBloc({
    required final UploadBlog uploadBlog,
    required final GetAllBlogs getAllBlogs,
    required final DeleteBlog deleteBlog,
  }) : _uploadBlog = uploadBlog,
       _getAllBlogs = getAllBlogs,
       _deleteBlog = deleteBlog,
       super(const BlogState.initial()) {
    on<BlogEvent>(
      (final BlogEvent event, final Emitter<BlogState> emit) =>
          emit(const Loading()),
    );
    on<_UploadBlog>(_onBlogUpload);
    on<_FetchAllBlogs>(_onFetchAllBlogs);
    on<_DeleteBlog>(_onDeleteBlog);
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

  Future<void> _onDeleteBlog(
    final _DeleteBlog event,
    final Emitter<BlogState> emit,
  ) async {
    final Either<failures.Failure, Unit> result =
        await _deleteBlog(event.posterId).run();

    await result.match((final failures.Failure failure) async {
      emit(Failure(failure.message));
      // ignore: require_trailing_commas
    }, (_) => _onFetchAllBlogs(const _FetchAllBlogs(), emit));
  }
}
