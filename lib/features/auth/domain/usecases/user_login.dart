import 'package:flash_blog/core/error/failures.dart';
import 'package:flash_blog/core/usecase/usecase.dart';
import 'package:flash_blog/features/auth/domain/entities/user.dart';
import 'package:flash_blog/features/auth/domain/repository/auth_repository.dart';
import 'package:fpdart/fpdart.dart';

class UserLogin implements UseCase<User, UserLoginParams> {
  final AuthRepository authRepository;

  const UserLogin({required this.authRepository});

  @override
  TaskEither<Failure, User> call(final UserLoginParams params) =>
      authRepository.signInWithEmailAndPassword(
        email: params.email,
        password: params.password,
      );
}

class UserLoginParams {
  final String email;
  final String password;

  UserLoginParams({required this.email, required this.password});
}
