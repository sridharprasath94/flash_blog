import 'package:flash_blog/core/error/exceptions.dart';
import 'package:fpdart/fpdart.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract interface class AuthRemoteDataSource {
  TaskEither<Exception, String> signInWithEmailAndPassword({
    required final String email,
    required final String password,
  });

  TaskEither<Exception, String> signUpWithEmailAndPassword({
    required final String username,
    required final String email,
    required final String password,
  });
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final SupabaseClient supabaseClient;

  AuthRemoteDataSourceImpl({required this.supabaseClient});

  @override
  TaskEither<Exception, String> signUpWithEmailAndPassword({
    required final String username,
    required final String email,
    required final String password,
  }) => TaskEither<Exception, String>.tryCatch(() async {
    final AuthResponse response = await supabaseClient.auth.signUp(
      email: email,
      password: password,
      data: <String, String>{'username': username},
    );

    if (response.user == null) {
      throw ServerException('User is null');
    }
    return response.user!.id;
  }, (final Object error, _) => ServerException(error.toString()));

  @override
  TaskEither<Exception, String> signInWithEmailAndPassword({
    required final String email,
    required final String password,
  }) => TaskEither<Exception, String>.tryCatch(() async {
    final AuthResponse response = await supabaseClient.auth.signInWithPassword(
      email: email,
      password: password,
    );

    if (response.user == null) {
      throw ServerException('User is null');
    }
    return response.user!.id;
  }, (final Object error, _) => ServerException(error.toString()));
}
