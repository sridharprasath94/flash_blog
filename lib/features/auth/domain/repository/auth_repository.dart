import 'package:flash_blog/core/error/failures.dart';
import 'package:flash_blog/features/auth/domain/entities/user.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class AuthRepository {
  TaskEither<Failure, User> signInWithEmailAndPassword({
    required final String email,
    required final String password,
  });

  TaskEither<Failure, User> signUpWithEmailAndPassword({
    required final String username,
    required final String email,
    required final String password,
  });

  Future<void> signOut();
}
