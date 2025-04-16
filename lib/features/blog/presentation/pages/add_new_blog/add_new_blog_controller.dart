import 'package:flash_blog/features/blog/presentation/pages/add_new_blog/add_new_blog_model.dart';
import 'package:flash_blog/features/blog/presentation/pages/add_new_blog/add_new_blog_navigation_service.dart';
import 'package:flash_blog/features/blog/presentation/pages/add_new_blog/add_new_blog_view.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '../../../../../generated/features/blog/presentation/pages/add_new_blog/add_new_blog_controller.g.dart';

@riverpod
class AddNewBlogControllerImpl extends _$AddNewBlogControllerImpl
    implements AddNewBlogController {
  @override
  AddNewBlogModel build({
    required final AddNewBlogNavigationService navigationService,
  }) {
    ref.onDispose(dispose);
    return const AddNewBlogModel(
      isLoading: false,
    );
  }

  void dispose() {
  }

  @override
  void tapBackButton() {
    // TODO: implement tapBackButton
  }

  @override
  void tapUploadButton() {
    // TODO: implement tapUploadButton
  }
}
