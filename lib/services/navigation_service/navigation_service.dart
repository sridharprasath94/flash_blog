import 'dart:async';

import 'package:flash_blog/features/auth/presentation/pages/login/login_navigation_service.dart';
import 'package:flash_blog/features/auth/presentation/pages/signup/signup_navigation_service.dart';
import 'package:flash_blog/features/blog/presentation/pages/add_new_blog/add_new_blog_navigation_service.dart';
import 'package:flash_blog/features/blog/presentation/pages/blog_home/blog_home_navigation_service.dart';
import 'package:flash_blog/services/navigation_service/navigation_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '../../generated/services/navigation_service/navigation_service.g.dart';

@riverpod
NavigationService goRouterNavigationService(final Ref ref) => throw UnimplementedError(
      'goRouterNavigationService should be initialized in the app widget',
    );

class NavigationService
    implements
        LoginNavigationService,
        SignupNavigationService,
        BlogHomeNavigationService,
        AddNewBlogNavigationService {
  static final GlobalKey<NavigatorState> navigatorKey = GlobalKey(
    debugLabel: 'navigator-key',
  );

  NavigationService(this.goRouter);

  static Option<BuildContext> get currentContext =>
      optionOf(navigatorKey.currentContext);

  final GoRouter goRouter;

  @override
  void goBack() {
    debugPrint('Navigating back');
    goRouter.canPop() ? goRouter.pop() : goRouter.go(loginRoute);
  }

  @override
  void navigateToSignUpView() {
    unawaited(goRouter.push(signUpRoute));
  }

  @override
  void navigateToSignInView() {
    unawaited(goRouter.push(loginRoute));
  }

  @override
  void navigateToAddNewBlogView() {
    debugPrint('Navigating to Add New Blog View');
    unawaited(goRouter.push(addNewBlogRoute));
  }

  @override
  void navigateToBlogHomeView() {
    debugPrint('Navigating to Blog Home View');
    unawaited(goRouter.push(blogHomeRoute));
  }
}
