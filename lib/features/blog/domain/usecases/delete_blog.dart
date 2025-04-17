import 'package:flash_blog/core/error/failures.dart';
import 'package:flash_blog/core/usecase/usecase.dart';
import 'package:flash_blog/features/blog/domain/repository/blog_repository.dart';
import 'package:fpdart/fpdart.dart';

class DeleteBlog implements UseCase<Unit, String> {
  final BlogRepository blogRepository;

  DeleteBlog(this.blogRepository);

  @override
  TaskEither<Failure, Unit> call(final String posterId) =>
      blogRepository.deleteBlog(posterId: posterId);
}
