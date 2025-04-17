import 'dart:io';

import 'package:flash_blog/core/error/failures.dart';
import 'package:flash_blog/features/blog/domain/entities/blog.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class BlogRepository {
  TaskEither<Failure, Blog> uploadBlog({
    required final File image,
    required final String title,
    required final String content,
    required final String posterId,
    required final List<String> topics,
  });

  TaskEither<Failure, List<Blog>> getAllBlogs();
}
