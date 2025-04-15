import 'package:flash_blog/core/error/exceptions.dart';
import 'package:flash_blog/features/auth/data/models/user_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract interface class AuthRemoteDataSource {
  Session? get currentUserSession;

  Future<UserModel> signInWithEmailAndPassword({
    required final String email,
    required final String password,
  });

  Future<UserModel> signUpWithEmailAndPassword({
    required final String username,
    required final String email,
    required final String password,
  });

  Future<UserModel?> getCurrentUserData();

  Future<bool> signOut();
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final SupabaseClient supabaseClient;

  AuthRemoteDataSourceImpl({required this.supabaseClient});

  @override
  Session? get currentUserSession => supabaseClient.auth.currentSession;

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
      debugPrint('User: ${response.user}');
      return UserModel.fromJson(response.user!.toJson());
    } on Exception catch (error) {
      throw ServerException(error.toString());
    }
  }

  @override
  Future<UserModel> signInWithEmailAndPassword({
    required final String email,
    required final String password,
  }) async {
    try {
      final AuthResponse response = await supabaseClient.auth
          .signInWithPassword(email: email, password: password);

      if (response.user == null) {
        throw ServerException('User is null');
      }
      return UserModel.fromJson(response.user!.toJson());
    } on Exception catch (error) {
      throw ServerException(error.toString());
    }
  }

  @override
  Future<UserModel?> getCurrentUserData() async {
    try {
      if (currentUserSession != null) {
        final PostgrestList userData = await supabaseClient
            .from('profiles')
            .select()
            .eq('id', currentUserSession!.user.id);
        debugPrint('UserData: ${userData.first}');
        return UserModel.fromJson(userData.first).copyWith(
          email: currentUserSession!.user.email!,
          username: currentUserSession!.user.userMetadata?['username']!,
        );
      }

      return null;
    } catch (e) {
      throw ServerException(e.toString());
    }
  }

  @override
  Future<bool> signOut() async {
    try {
      await supabaseClient.auth.signOut();
      return true;
    } on Exception catch (error) {
      throw ServerException(error.toString());
    }
  }
}
