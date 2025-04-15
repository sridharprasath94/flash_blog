import 'dart:io';

import 'package:desktop_window/desktop_window.dart';
import 'package:flash_blog/core/common/cubits/app_user_cubit.dart';
import 'package:flash_blog/core/theme/theme.dart';
import 'package:flash_blog/features/auth/presentation/bloc/auth_bloc.dart'
    hide Initial, LoggedIn;
import 'package:flash_blog/init_dependencies.dart';
import 'package:flash_blog/services/navigation_service/navigation_service_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nested/nested.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDependencies();
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    await DesktopWindow.setMinWindowSize(const Size(400, 800));
    await DesktopWindow.setMaxWindowSize(const Size(400, 800));
  }
  runApp(
    ProviderScope(
      child: MultiBlocProvider(
        providers: <SingleChildWidget>[
          BlocProvider<AppUserCubit>(
            create: (_) => serviceLocator<AppUserCubit>(),
          ),
          BlocProvider<AuthBloc>(create: (_) => serviceLocator<AuthBloc>()),
        ],
        child: const MyApp(),
      ),
    ),
  );
}

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<MyApp> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  @override
  void initState() {
    super.initState();
    context.read<AuthBloc>().add(const AuthEvent.isLoggedIn());
  }

  @override
  Widget build(final BuildContext context) =>
      BlocSelector<AppUserCubit, AppUserState, AppUserState>(
        selector: (final AppUserState state) => state,
        builder: (final BuildContext context, final AppUserState appUserState) {
          if (appUserState is Initial) {
            return const Center(child: CircularProgressIndicator());
          }
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: 'Blog App',
            theme: AppTheme.darkThemeMode,
            routerConfig: ref.read(goRouterProvider),
          );
        },
      );
}
