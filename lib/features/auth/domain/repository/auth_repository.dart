import 'package:flash_blog/core/error/failures.dart';
import 'package:flash_blog/features/auth/data/models/user_model.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class AuthRepository {
  TaskEither<Failure, String> signInWithEmailAndPassword({
    required final String email,
    required final String password,
  });

  TaskEither<Failure, UserModel> signUpWithEmailAndPassword({
    required final String username,
    required final String email,
    required final String password,
  });

  Future<void> signOut();
}
