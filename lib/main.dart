import 'dart:io';

import 'package:desktop_window/desktop_window.dart';
import 'package:flash_blog/core/secrets/app_secrets.dart';
import 'package:flash_blog/core/theme/theme.dart';
import 'package:flash_blog/features/auth/data/data_sources/auth_remote_data_sources.dart';
import 'package:flash_blog/features/auth/data/repository/auth_repository_impl.dart';
import 'package:flash_blog/features/auth/domain/usecases/user_signup.dart';
import 'package:flash_blog/features/auth/presentation/bloc/auth/auth_bloc.dart';
import 'package:flash_blog/services/navigation_service/navigation_service_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nested/nested.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final Supabase supabase = await Supabase.initialize(
    url: AppSecrets.supabaseUrl,
    anonKey: AppSecrets.supabaseKey,
  );
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    await DesktopWindow.setMinWindowSize(const Size(400, 800));
    await DesktopWindow.setMaxWindowSize(const Size(400, 800));
  }
  runApp(
    ProviderScope(
      child: MultiBlocProvider(
        providers: <SingleChildWidget>[
          BlocProvider<AuthBloc>(
            create:
                (_) => AuthBloc(
                  userSignup: UserSignup(
                    authRepository: AuthRepositoryImpl(
                      authRemoteDataSource: AuthRemoteDataSourceImpl(
                        supabaseClient: supabase.client,
                      ),
                    ),
                  ),
                ),
          ),
        ],
        child: const MyApp(),
      ),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(final BuildContext context, final WidgetRef ref) =>
      MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Blog App',
        theme: AppTheme.darkThemeMode,
        routerConfig: ref.read(goRouterProvider),
      );
}
