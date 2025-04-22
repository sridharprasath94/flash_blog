import 'package:flash_blog/core/common/entities/user.dart';
import 'package:flash_blog/core/error/failures.dart';
import 'package:flash_blog/core/network/connection_checker.dart';
import 'package:flash_blog/features/auth/data/data_sources/auth_remote_data_sources.dart';
import 'package:flash_blog/features/auth/data/models/user_model.dart';
import 'package:flash_blog/features/auth/domain/repository/auth_repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:gotrue/src/types/session.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource authRemoteDataSource;
  final ConnectionChecker connectionChecker;

  AuthRepositoryImpl({
    required this.authRemoteDataSource,
    required this.connectionChecker,
  });

  @override
  TaskEither<Failure, User> currentUser() => TaskEither<Failure, User>.Do((
    final Future<A> Function<A>(TaskEither<Failure, A>) $,
  ) async {
    if (!await connectionChecker.isConnected) {
      final Session session = await $(
        TaskEither<Failure, Session>.fromNullable(
          authRemoteDataSource.currentUserSession,
          () => Failure('User not logged in!'),
        ),
      );
      return UserModel(
        id: session.user.id,
        email: session.user.email ?? '',
        username: '',
      );
    } else {
      final Session _ = await $(
        TaskEither<Failure, Session>.fromNullable(
          authRemoteDataSource.currentUserSession,
          () => Failure('User not logged in!'),
        ),
      );

      final UserModel user = await $(
        TaskEither<Failure, UserModel?>.tryCatch(
          authRemoteDataSource.getCurrentUserData,
          (final Object e, _) => Failure(e.toString()),
        ).flatMap(
          (final UserModel? user) =>
              TaskEither<Failure, UserModel>.fromNullable(
                user,
                () => Failure('User not logged in!'),
              ),
        ),
      );
      return user;
    }
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
  TaskEither<Failure, bool> signOut() => TaskEither<Failure, bool>.tryCatch(
    () async => authRemoteDataSource.signOut(),
    (final Object error, _) => Failure(error.toString()),
  );

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
      TaskEither<Failure, User>.tryCatch(() async {
        if (!await connectionChecker.isConnected) {
          throw Exception('No internet connection');
        }
        return await function();
        // ignore: require_trailing_commas
      }, (final Object error, _) => Failure(error.toString()));
}
