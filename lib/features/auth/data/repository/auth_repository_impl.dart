import 'package:flash_blog/core/error/failures.dart';
import 'package:flash_blog/features/auth/data/data_sources/auth_remote_data_sources.dart';
import 'package:flash_blog/features/auth/domain/repository/auth_repository.dart';
import 'package:fpdart/fpdart.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource authRemoteDataSource;

  AuthRepositoryImpl({required this.authRemoteDataSource});

  @override
  TaskEither<Failure, String> signInWithEmailAndPassword({
    required final String email,
    required final String password,
  }) => authRemoteDataSource
      .signInWithEmailAndPassword(email: email, password: password)
      .mapLeft((final Exception error) => Failure(error.toString()));

  @override
  Future<void> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }

  @override
  TaskEither<Failure, String> signUpWithEmailAndPassword({
    required final String username,
    required final String email,
    required final String password,
  }) => authRemoteDataSource
      .signUpWithEmailAndPassword(
        email: email,
        password: password,
        username: username,
      )
      .mapLeft((final Exception error) => Failure(error.toString()));
}
