import 'package:flash_blog/core/secrets/app_secrets.dart';
import 'package:flash_blog/features/auth/data/data_sources/auth_remote_data_sources.dart';
import 'package:flash_blog/features/auth/data/repository/auth_repository_impl.dart';
import 'package:flash_blog/features/auth/domain/repository/auth_repository.dart';
import 'package:flash_blog/features/auth/domain/usecases/user_signup.dart';
import 'package:flash_blog/features/auth/presentation/bloc/auth/auth_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final GetIt serviceLocator = GetIt.instance;

Future<void> initDependencies() async {
  await _initSupabase();
  _initAuth();
}

Future<void> _initSupabase() async {
  final Supabase supabase = await Supabase.initialize(
    url: AppSecrets.supabaseUrl,
    anonKey: AppSecrets.supabaseKey,
  );
  serviceLocator.registerLazySingleton<SupabaseClient>(() => supabase.client);
}

void _initAuth() {
  serviceLocator
    ..registerFactory<AuthRemoteDataSource>(
      () => AuthRemoteDataSourceImpl(
        supabaseClient: serviceLocator<SupabaseClient>(),
      ),
    )
    ..registerFactory<AuthRepository>(
      () => AuthRepositoryImpl(
        authRemoteDataSource: serviceLocator<AuthRemoteDataSource>(),
      ),
    )
    ..registerFactory<UserSignup>(
      () => UserSignup(authRepository: serviceLocator<AuthRepository>()),
    )
    ..registerLazySingleton(
      () => AuthBloc(userSignup: serviceLocator<UserSignup>()),
    );
}
