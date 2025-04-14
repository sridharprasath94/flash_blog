import 'package:flash_blog/core/error/failures.dart';
import 'package:flash_blog/core/usecase/usecase.dart';
import 'package:flash_blog/features/auth/data/models/user_model.dart';
import 'package:flash_blog/features/auth/domain/repository/auth_repository.dart';
import 'package:fpdart/fpdart.dart';

class UserSignup implements UseCase<UserModel, UserSignUpParams> {
  final AuthRepository authRepository;

  UserSignup({required this.authRepository});

  @override
  TaskEither<Failure, UserModel> call(final UserSignUpParams params) =>
      authRepository.signUpWithEmailAndPassword(
        username: params.username,
        email: params.email,
        password: params.password,
      );
}

class UserSignUpParams {
  final String username;
  final String email;
  final String password;

  UserSignUpParams({
    required this.username,
    required this.email,
    required this.password,
  });
}
