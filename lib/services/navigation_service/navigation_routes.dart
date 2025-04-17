import 'package:flash_blog/core/common/cubits/app_user_cubit.dart';
import 'package:flash_blog/core/common/entities/user.dart';
import 'package:flash_blog/features/auth/presentation/bloc/auth_bloc.dart'
    hide LoggedIn;
import 'package:flash_blog/features/auth/presentation/pages/login/login_controller.dart';
import 'package:flash_blog/features/auth/presentation/pages/login/login_view.dart';
import 'package:flash_blog/features/auth/presentation/pages/signup/signup_controller.dart';
import 'package:flash_blog/features/auth/presentation/pages/signup/signup_view.dart';
import 'package:flash_blog/features/blog/presentation/bloc/blog_bloc.dart';
import 'package:flash_blog/features/blog/presentation/pages/add_new_blog/add_new_blog_controller.dart';
import 'package:flash_blog/features/blog/presentation/pages/add_new_blog/add_new_blog_view.dart';
import 'package:flash_blog/features/blog/presentation/pages/blog_home/blog_home_controller.dart';
import 'package:flash_blog/features/blog/presentation/pages/blog_home/blog_home_view.dart';
import 'package:flash_blog/init_dependencies.dart';
import 'package:flash_blog/services/navigation_service/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

part '../../generated/services/navigation_service/navigation_routes.g.dart';

const String initialLocation = loginRoute;
const String signUpRoute = '/signup';
const String loginRoute = '/login';
const String splashRoute = '/splash';
const String blogHomeRoute = '/blogHome';
const String addNewBlogRoute = '/addNewBlog';

@TypedGoRoute<SignUpRoute>(path: signUpRoute)
class SignUpRoute extends GoRouteData {
  @override
  Widget build(final BuildContext context, final GoRouterState state) =>
      Consumer(
        builder: (final _, final WidgetRef ref, final __) {
          final SignupControllerImplProvider signupControllerImplProvider =
              SignupControllerImplProvider(
                navigationService: ref.watch(goRouterNavigationServiceProvider),
                authBloc: context.read<AuthBloc>(),
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
                authBloc: context.read<AuthBloc>(),
              );
          return LoginView(
            formKey: GlobalKey<FormState>(),
            controller: ref.read(loginControllerImplProvider.notifier),
            model: ref.watch(loginControllerImplProvider),
          );
        },
      );
}

@TypedGoRoute<BlogHomeRoute>(path: blogHomeRoute)
class BlogHomeRoute extends GoRouteData {
  @override
  Widget build(final BuildContext context, final GoRouterState state) =>
      Consumer(
        builder: (final _, final WidgetRef ref, final __) {
          final BlogHomeControllerImplProvider blogHomeControllerImplProvider =
              BlogHomeControllerImplProvider(
                navigationService: ref.watch(goRouterNavigationServiceProvider),
                authBloc: context.read<AuthBloc>(),
                blogBloc: context.read<BlogBloc>(),
                user:(serviceLocator<AppUserCubit>().state as LoggedIn).user,
              );
          return BlogHomeView(
            formKey: GlobalKey<FormState>(),
            controller: ref.read(blogHomeControllerImplProvider.notifier),
            model: ref.watch(blogHomeControllerImplProvider),
          );
        },
      );
}

@TypedGoRoute<AddNewBlogRoute>(path: addNewBlogRoute)
class AddNewBlogRoute extends GoRouteData {
  final User $extra;

  AddNewBlogRoute(this.$extra);

  @override
  Widget build(final BuildContext context, final GoRouterState state) =>
      Consumer(
        builder: (final _, final WidgetRef ref, final __) {
          final AddNewBlogControllerImplProvider
          addNewBlogControllerImplProvider = AddNewBlogControllerImplProvider(
            navigationService: ref.watch(goRouterNavigationServiceProvider),
            blogBloc: context.read<BlogBloc>(),
            posterId: $extra.id,
          );
          return AddNewBlogView(
            formKey: GlobalKey<FormState>(),
            controller: ref.read(addNewBlogControllerImplProvider.notifier),
            model: ref.watch(addNewBlogControllerImplProvider),
          );
        },
      );
}

@TypedGoRoute<SplashRoute>(path: splashRoute)
class SplashRoute extends GoRouteData {
  const SplashRoute();

  @override
  Widget build(final BuildContext context, final GoRouterState state) =>
      const SizedBox(child: Center(child: Text('Splash Screen')));
}
