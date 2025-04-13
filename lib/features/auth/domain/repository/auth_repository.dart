import 'package:flash_blog/core/error/failures.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class AuthRepository {
  TaskEither<Failure, String> signInWithEmailAndPassword({
    required final String email,
    required final String password,
  });

  TaskEither<Failure, String> signUpWithEmailAndPassword({
    required final String username,
    required final String email,
    required final String password,
  });

  Future<void> signOut();
}
