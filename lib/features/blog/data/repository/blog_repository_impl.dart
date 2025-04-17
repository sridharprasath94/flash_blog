import 'dart:io';

import 'package:flash_blog/core/error/failures.dart';
import 'package:flash_blog/features/blog/data/data_sources/blog_remote_data_source.dart';
import 'package:flash_blog/features/blog/data/models/blog_model.dart';
import 'package:flash_blog/features/blog/domain/entities/blog.dart';
import 'package:flash_blog/features/blog/domain/repository/blog_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:fpdart/fpdart.dart';
import 'package:uuid/uuid.dart';

class BlogRepositoryImpl implements BlogRepository {
  final BlogRemoteDataSource blogRemoteDataSource;

  BlogRepositoryImpl(this.blogRemoteDataSource);

  @override
  TaskEither<Failure, Blog> uploadBlog({
    required final File image,
    required final String title,
    required final String content,
    required final String posterId,
    required final List<String> topics,
  }) => TaskEither<Failure, Blog>.tryCatch(
    () async {
      BlogModel blogModel = BlogModel(
        id: const Uuid().v1(),
        posterId: posterId,
        title: title,
        content: content,
        imageUrl: '',
        topics: topics,
        updatedAt: DateTime.now(),
      );

      final String imageUrl = await blogRemoteDataSource.uploadBlogImage(
        image: image,
        blog: blogModel,
      );

      blogModel = blogModel.copyWith(imageUrl: imageUrl);

      debugPrint('Blog Model: $blogModel');
      final BlogModel uploadedBlog = await blogRemoteDataSource.uploadBlog(
        blogModel,
      );
      debugPrint('Uploaded Blog: $uploadedBlog');
      return uploadedBlog;
      // ignore: require_trailing_commas
    },
    (final Object error, _) {
      debugPrint('Error uploading blog: $error');
      return Failure(error.toString());
    },
  );

  @override
  TaskEither<Failure, List<Blog>> getAllBlogs() =>
      TaskEither<Failure, List<Blog>>.tryCatch(() async {
        final List<BlogModel> blogs = await blogRemoteDataSource.getAllBlogs();
        return blogs;
        // ignore: require_trailing_commas
      }, (final Object error, _) => Failure(error.toString()));

  @override
  TaskEither<Failure, Unit> deleteBlog({required final String posterId}) =>
      TaskEither<Failure, Unit>.tryCatch(() async {
        await blogRemoteDataSource.deleteBlog(posterId);
        return unit;
      }, (final Object error, _) => Failure(error.toString()));
}
