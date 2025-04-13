import 'package:flash_blog/features/auth/presentation/pages/login/login_navigation_service.dart';
import 'package:flash_blog/features/auth/presentation/pages/signup/signup_navigation_service.dart';
import 'package:flash_blog/services/navigation_service/navigation_service_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '../../generated/services/navigation_service/navigation_service.g.dart';

@riverpod
NavigationService goRouterNavigationService(final Ref ref) =>
    NavigationService(ref.watch(goRouterProvider));

class NavigationService  implements LoginNavigationService, SignupNavigationService {
  static final GlobalKey<NavigatorState> navigatorKey = GlobalKey(
    debugLabel: 'navigator-key',
  );

  NavigationService(this.goRouter);

  static Option<BuildContext> get currentContext =>
      optionOf(navigatorKey.currentContext);

  final GoRouter goRouter;

  @override
  void goBack() {
    // TODO: implement goBack
  }

  @override
  void navigateToSignUpView() {
    // TODO: implement navigateToSignUpView
  }
}
