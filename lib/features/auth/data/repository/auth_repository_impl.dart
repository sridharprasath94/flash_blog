import 'package:flash_blog/core/common/entities/user.dart';
import 'package:flash_blog/core/error/failures.dart';
import 'package:flash_blog/features/auth/data/data_sources/auth_remote_data_sources.dart';
import 'package:flash_blog/features/auth/data/models/user_model.dart';
import 'package:flash_blog/features/auth/domain/repository/auth_repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:gotrue/src/types/session.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource authRemoteDataSource;

  AuthRepositoryImpl({required this.authRemoteDataSource});

  @override
  TaskEither<Failure, User> currentUser() => TaskEither<Failure, User>.Do((
    final Future<A> Function<A>(TaskEither<Failure, A>) $,
  ) async {
    final Session session = await $(
      TaskEither<Failure, Session>.fromNullable(
        authRemoteDataSource.currentUserSession,
        () => Failure('User not logged in!'),
      ),
    );

    final UserModel user = await $(
      TaskEither<Failure, UserModel>.fromNullable(
        await authRemoteDataSource.getCurrentUserData(),
        () => Failure('User not logged in!'),
      ),
    );
    return user;
  });

  @override
  TaskEither<Failure, User> signInWithEmailAndPassword({
    required final String email,
    required final String password,
  }) => _getUser(
    () async => authRemoteDataSource.signInWithEmailAndPassword(
      email: email,
      password: password,
    ),
  );

  @override
  Future<void> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }

  @override
  TaskEither<Failure, User> signUpWithEmailAndPassword({
    required final String username,
    required final String email,
    required final String password,
  }) => _getUser(
    () async => authRemoteDataSource.signUpWithEmailAndPassword(
      username: username,
      email: email,
      password: password,
    ),
  );

  TaskEither<Failure, User> _getUser(final Future<User> Function() function) =>
      TaskEither<Failure, User>.tryCatch(
        function,
        (final Object error, _) => Failure(error.toString()),
      );
}
