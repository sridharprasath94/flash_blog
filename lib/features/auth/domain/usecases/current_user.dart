import 'package:flash_blog/core/common/entities/user.dart';
import 'package:flash_blog/core/error/failures.dart';
import 'package:flash_blog/core/usecase/usecase.dart';
import 'package:flash_blog/features/auth/domain/repository/auth_repository.dart';
import 'package:fpdart/fpdart.dart';

class CurrentUser implements UseCase<User, NoParams> {
  final AuthRepository authRepository;

  CurrentUser({required this.authRepository});

  @override
  TaskEither<Failure, User> call(final NoParams params) =>
      authRepository.currentUser();
}
