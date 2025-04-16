import 'package:flash_blog/core/common/cubits/app_user_cubit.dart';
import 'package:flash_blog/init_dependencies.dart';
import 'package:flash_blog/services/navigation_service/navigation_routes.dart';
import 'package:flash_blog/services/navigation_service/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '../../generated/services/navigation_service/navigation_service_provider.g.dart';

@riverpod
GoRouter goRouter(final Ref ref) => GoRouter(
  routes: $appRoutes,
  initialLocation: switch (serviceLocator<AppUserCubit>().state) {
    Initial() => null,
    LoggedIn() => blogHomeRoute,
    LoggedOut() => loginRoute,
    AppUserState() => null,
  },
  redirect: (final BuildContext context, final GoRouterState state) {
    final bool isLoggedIn = context.watch<AppUserCubit>().state is LoggedIn;
    final bool isLoginPage = state.matchedLocation == loginRoute;
    final bool isSignUpPage = state.matchedLocation == signUpRoute;

    if (isLoggedIn && (isLoginPage || isSignUpPage)) {
      return blogHomeRoute;
    }
    return null;
  },
  navigatorKey: NavigationService.navigatorKey,
);
