import 'package:flash_blog/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:flash_blog/features/blog/presentation/pages/blog_home/blog_home_model.dart';
import 'package:flash_blog/features/blog/presentation/pages/blog_home/blog_home_navigation_service.dart';
import 'package:flash_blog/features/blog/presentation/pages/blog_home/blog_home_view.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '../../../../../generated/features/blog/presentation/pages/blog_home/blog_home_controller.g.dart';

@riverpod
class BlogHomeControllerImpl extends _$BlogHomeControllerImpl
    implements BlogHomeController {
  @override
  BlogHomeModel build({
    required final BlogHomeNavigationService navigationService,
    required final AuthBloc authBloc,
  }) {
    ref.onDispose(dispose);
    return const BlogHomeModel(isLoading: false);
  }

  void dispose() {}

  @override
  void tapBackButton() {
    navigationService.goBack();
  }

  @override
  void tapUploadButton() {
    // TODO: implement tapUploadButton
  }

  @override
  void tapAddNewBlogButton() {
    navigationService.navigateToAddNewBlogView();
  }

  @override
  void tapLogoutButton() {
    authBloc.add(const AuthEvent.signOut());
  }
}
