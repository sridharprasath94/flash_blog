import 'package:flash_blog/core/common/cubits/app_user_cubit.dart';
import 'package:flash_blog/core/secrets/app_secrets.dart';
import 'package:flash_blog/features/auth/data/data_sources/auth_remote_data_sources.dart';
import 'package:flash_blog/features/auth/data/repository/auth_repository_impl.dart';
import 'package:flash_blog/features/auth/domain/repository/auth_repository.dart';
import 'package:flash_blog/features/auth/domain/usecases/current_user.dart';
import 'package:flash_blog/features/auth/domain/usecases/user_login.dart';
import 'package:flash_blog/features/auth/domain/usecases/user_signout.dart';
import 'package:flash_blog/features/auth/domain/usecases/user_signup.dart';
import 'package:flash_blog/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:flash_blog/features/blog/data/data_sources/blog_remote_data_source.dart';
import 'package:flash_blog/features/blog/data/repository/blog_repository_impl.dart';
import 'package:flash_blog/features/blog/domain/repository/blog_repository.dart';
import 'package:flash_blog/features/blog/domain/usecases/get_all_blogs.dart';
import 'package:flash_blog/features/blog/domain/usecases/upload_blog.dart';
import 'package:flash_blog/features/blog/presentation/bloc/blog_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final GetIt serviceLocator = GetIt.instance;

Future<void> initDependencies() async {
  await _initSupabase();
  _initAuth();
  _initBlog();
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
    ..registerFactory<UserLogin>(
      () => UserLogin(authRepository: serviceLocator<AuthRepository>()),
    )
    ..registerFactory<UserSignOut>(
      () => UserSignOut(authRepository: serviceLocator<AuthRepository>()),
    )
    ..registerFactory<CurrentUser>(
      () => CurrentUser(authRepository: serviceLocator<AuthRepository>()),
    )
    ..registerLazySingleton<AppUserCubit>(AppUserCubit.new)
    ..registerLazySingleton(
      () => AuthBloc(
        userSignup: serviceLocator<UserSignup>(),
        userLogin: serviceLocator<UserLogin>(),
        userSignOut: serviceLocator<UserSignOut>(),
        currentUser: serviceLocator<CurrentUser>(),
        appUserCubit: serviceLocator<AppUserCubit>(),
      ),
    );
}

void _initBlog() {
  // Datasource
  serviceLocator
    ..registerFactory<BlogRemoteDataSource>(
          () => BlogRemoteDataSourceImpl(
        serviceLocator(),
      ),
    )
  // Repository
    ..registerFactory<BlogRepository>(
          () => BlogRepositoryImpl(
        serviceLocator(),
      ),
    )
  // Usecases
    ..registerFactory(
          () => UploadBlog(
        serviceLocator(),
      ),
    )
    ..registerFactory(
          () => GetAllBlogs(
        serviceLocator(),
      ),
    )
  // Bloc
    ..registerLazySingleton(
          () => BlogBloc(
        uploadBlog: serviceLocator(),
        getAllBlogs: serviceLocator(),
      ),
    );
}
