import 'package:flash_blog/features/auth/presentation/pages/login_page.dart';
import 'package:flash_blog/features/auth/presentation/pages/signup_page.dart';
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
        builder: (final _, final WidgetRef ref, final __) => const SignupPage(),
      );
}

@TypedGoRoute<LoginRoute>(path: loginRoute)
class LoginRoute extends GoRouteData {
  @override
  Widget build(final BuildContext context, final GoRouterState state) =>
      Consumer(
        builder: (final _, final WidgetRef ref, final __) => const LoginPage(),
      );
}