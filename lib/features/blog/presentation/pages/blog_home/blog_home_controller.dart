import 'dart:async';

import 'package:flash_blog/core/common/cubits/app_user_cubit.dart';
import 'package:flash_blog/features/auth/presentation/bloc/auth_bloc.dart'
    hide LoggedIn;
import 'package:flash_blog/features/blog/domain/entities/blog.dart';
import 'package:flash_blog/features/blog/presentation/bloc/blog_bloc.dart';
import 'package:flash_blog/features/blog/presentation/pages/blog_home/blog_home_model.dart';
import 'package:flash_blog/features/blog/presentation/pages/blog_home/blog_home_navigation_service.dart';
import 'package:flash_blog/features/blog/presentation/pages/blog_home/blog_home_view.dart';
import 'package:flash_blog/init_dependencies.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '../../../../../generated/features/blog/presentation/pages/blog_home/blog_home_controller.g.dart';

@riverpod
class BlogHomeControllerImpl extends _$BlogHomeControllerImpl
    implements BlogHomeController {
  @override
  BlogHomeModel build({
    required final BlogHomeNavigationService navigationService,
    required final AuthBloc authBloc,
    required final BlogBloc blogBloc,
  }) {
    scheduleMicrotask(init);
    ref.onDispose(dispose);
    return const BlogHomeModel(isLoading: false, blogs: <Blog>[]);
  }

  void init() {
    blogBloc.add(const BlogEvent.fetchAllBlogs());
  }

  void dispose() {}

  @override
  void tapBackButton() {
    navigationService.goBack();
  }

  @override
  void tapAddNewBlogButton() {
    navigationService.navigateToAddNewBlogView(
      (serviceLocator<AppUserCubit>().state as LoggedIn).user,
    );
  }

  @override
  void tapLogoutButton() {
    authBloc.add(const AuthEvent.signOut());
  }

  @override
  void onTapBlogCard(final Blog blog) {
    navigationService.navigateToBlogViewerView(blog);
  }
}
