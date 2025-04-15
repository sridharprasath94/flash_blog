import 'package:flash_blog/core/common/cubits/app_user_cubit.dart';
import 'package:flash_blog/services/navigation_service/navigation_routes.dart';
import 'package:flash_blog/services/navigation_service/navigation_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '../../generated/services/navigation_service/navigation_service_provider.g.dart';

@riverpod
GoRouter goRouter(final Ref ref) => GoRouter(
  initialLocation: splashRoute,
  navigatorKey: NavigationService.navigatorKey,
  routes: $appRoutes,
  redirect: (final BuildContext context, final GoRouterState state) {
    final AppUserState appUserState = context.watch<AppUserCubit>().state;
    debugPrint('App User State: $appUserState');
    return switch (appUserState) {
      Initial() => null,
      LoggedIn() => blogHomeRoute,
      LoggedOut() => loginRoute,
      AppUserState() => null,
    };
  },
);
