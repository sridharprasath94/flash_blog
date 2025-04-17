import 'package:flash_blog/core/common/entities/user.dart';
import 'package:flash_blog/features/blog/domain/entities/blog.dart';

abstract class BlogHomeNavigationService {
  void goBack();

  void navigateToAddNewBlogView(final User user);

  void navigateToBlogViewerView(final Blog blog);
}
