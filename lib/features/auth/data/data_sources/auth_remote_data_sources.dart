import 'package:flash_blog/core/error/exceptions.dart';
import 'package:flash_blog/features/auth/data/models/user_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract interface class AuthRemoteDataSource {
  Future<String> signInWithEmailAndPassword({
    required final String email,
    required final String password,
  });

  Future<UserModel> signUpWithEmailAndPassword({
    required final String username,
    required final String email,
    required final String password,
  });
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final SupabaseClient supabaseClient;

  AuthRemoteDataSourceImpl({required this.supabaseClient});

  @override
  Future<UserModel> signUpWithEmailAndPassword({
    required final String username,
    required final String email,
    required final String password,
  }) async {
    try {
      final AuthResponse response = await supabaseClient.auth.signUp(
        email: email,
        password: password,
        data: <String, String>{'username': username},
      );

      if (response.user == null) {
        throw ServerException('User is null');
      }
      return UserModel.fromJson(response.user!.toJson());
    } on Exception catch (error) {
      throw ServerException(error.toString());
    }
  }

  @override
  Future<String> signInWithEmailAndPassword({
    required final String email,
    required final String password,
  }) async {
    try {
      final AuthResponse response = await supabaseClient.auth.signUp(
        email: email,
        password: password,
      );

      if (response.user == null) {
        throw ServerException('User is null');
      }
      return response.user!.id;
    } on Exception catch (error) {
      throw ServerException(error.toString());
    }
  }
}
