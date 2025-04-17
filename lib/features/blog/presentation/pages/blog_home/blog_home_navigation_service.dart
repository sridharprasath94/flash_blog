import 'package:flash_blog/core/common/entities/user.dart';

abstract class BlogHomeNavigationService {
  void goBack();

  void navigateToAddNewBlogView(final User user);
}
