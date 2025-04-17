// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../services/navigation_service/navigation_routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
  $signUpRoute,
  $loginRoute,
  $blogHomeRoute,
  $addNewBlogRoute,
  $splashRoute,
];

RouteBase get $signUpRoute => GoRouteData.$route(
  path: '/signup',

  factory: $SignUpRouteExtension._fromState,
);

extension $SignUpRouteExtension on SignUpRoute {
  static SignUpRoute _fromState(GoRouterState state) => SignUpRoute();

  String get location => GoRouteData.$location('/signup');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $loginRoute => GoRouteData.$route(
  path: '/login',

  factory: $LoginRouteExtension._fromState,
);

extension $LoginRouteExtension on LoginRoute {
  static LoginRoute _fromState(GoRouterState state) => LoginRoute();

  String get location => GoRouteData.$location('/login');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $blogHomeRoute => GoRouteData.$route(
  path: '/blogHome',

  factory: $BlogHomeRouteExtension._fromState,
);

extension $BlogHomeRouteExtension on BlogHomeRoute {
  static BlogHomeRoute _fromState(GoRouterState state) => BlogHomeRoute();

  String get location => GoRouteData.$location('/blogHome');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $addNewBlogRoute => GoRouteData.$route(
  path: '/addNewBlog',

  factory: $AddNewBlogRouteExtension._fromState,
);

extension $AddNewBlogRouteExtension on AddNewBlogRoute {
  static AddNewBlogRoute _fromState(GoRouterState state) =>
      AddNewBlogRoute(state.extra as User);

  String get location => GoRouteData.$location('/addNewBlog');

  void go(BuildContext context) => context.go(location, extra: $extra);

  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: $extra);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: $extra);

  void replace(BuildContext context) =>
      context.replace(location, extra: $extra);
}

RouteBase get $splashRoute => GoRouteData.$route(
  path: '/splash',

  factory: $SplashRouteExtension._fromState,
);

extension $SplashRouteExtension on SplashRoute {
  static SplashRoute _fromState(GoRouterState state) => const SplashRoute();

  String get location => GoRouteData.$location('/splash');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
