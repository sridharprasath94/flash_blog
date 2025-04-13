import 'package:flash_blog/features/auth/presentation/pages/login/login_controller.dart';
import 'package:flash_blog/features/auth/presentation/pages/login/login_view.dart';
import 'package:flash_blog/features/auth/presentation/pages/signup/signup_controller.dart';
import 'package:flash_blog/features/auth/presentation/pages/signup/signup_view.dart';
import 'package:flash_blog/services/navigation_service/navigation_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

part '../../generated/services/navigation_service/navigation_routes.g.dart';

const String initialLocation = signUpRoute;
const String signUpRoute = '/signup';
const String loginRoute = '/login';

@TypedGoRoute<SignUpRoute>(path: signUpRoute)
class SignUpRoute extends GoRouteData {
  @override
  Widget build(final BuildContext context, final GoRouterState state) =>
      Consumer(
        builder: (final _, final WidgetRef ref, final __) {
          final SignupControllerImplProvider signupControllerImplProvider =
              SignupControllerImplProvider(
                navigationService: ref.watch(goRouterNavigationServiceProvider),
              );
          return SignupView(
            formKey: GlobalKey<FormState>(),
            controller: ref.read(signupControllerImplProvider.notifier),
            model: ref.watch(signupControllerImplProvider),
          );
        },
      );
}

@TypedGoRoute<LoginRoute>(path: loginRoute)
class LoginRoute extends GoRouteData {
  @override
  Widget build(final BuildContext context, final GoRouterState state) =>
      Consumer(
        builder: (final _, final WidgetRef ref, final __) {
          final LoginControllerImplProvider loginControllerImplProvider =
              LoginControllerImplProvider(
                navigationService: ref.watch(goRouterNavigationServiceProvider),
              );
          return LoginView(
            controller: ref.read(loginControllerImplProvider.notifier),
            model: ref.watch(loginControllerImplProvider),
          );
        },
      );
}
