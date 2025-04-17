import 'package:flash_blog/core/error/failures.dart';
import 'package:flash_blog/core/usecase/usecase.dart';
import 'package:flash_blog/features/blog/domain/entities/blog.dart';
import 'package:flash_blog/features/blog/domain/repository/blog_repository.dart';
import 'package:fpdart/fpdart.dart';

class GetAllBlogs implements UseCase<List<Blog>, NoParams> {
  final BlogRepository blogRepository;

  GetAllBlogs(this.blogRepository);

  @override
  TaskEither<Failure, List<Blog>> call(final NoParams params) =>
      blogRepository.getAllBlogs();
}
