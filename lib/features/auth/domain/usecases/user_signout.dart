import 'package:flash_blog/core/error/failures.dart';
import 'package:flash_blog/core/usecase/usecase.dart';
import 'package:flash_blog/features/auth/domain/repository/auth_repository.dart';
import 'package:fpdart/fpdart.dart';

class UserSignOut implements UseCase<bool, NoParams> {
  final AuthRepository authRepository;

  UserSignOut({required this.authRepository});

  @override
  TaskEither<Failure, bool> call(final NoParams params) =>
      authRepository.signOut();
}
