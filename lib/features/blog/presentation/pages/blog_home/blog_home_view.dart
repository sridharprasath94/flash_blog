import 'package:flash_blog/core/common/widgets/loader.dart';
import 'package:flash_blog/core/theme/app_palette.dart';
import 'package:flash_blog/core/utils/show_snackbar.dart';
import 'package:flash_blog/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:flash_blog/features/blog/domain/entities/blog.dart';
import 'package:flash_blog/features/blog/presentation/bloc/blog_bloc.dart'
    as blog;
import 'package:flash_blog/features/blog/presentation/pages/blog_home/blog_home_model.dart';
import 'package:flash_blog/features/blog/presentation/widgets/blog_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class BlogHomeController {
  void tapLogoutButton();

  void tapAddNewBlogButton();

  void tapBackButton();

  void tapUploadButton();
}

class BlogHomeView extends StatelessWidget {
  final BlogHomeController controller;
  final BlogHomeModel model;
  final GlobalKey<FormState> formKey;

  const BlogHomeView({
    super.key,
    required this.formKey,
    required this.controller,
    required this.model,
  });

  @override
  Widget build(final BuildContext context) => Scaffold(
    appBar: AppBar(
      title: const Center(child: Text('Blog Home')),
      leading: IconButton(
        icon: const Icon(Icons.logout),
        onPressed: controller.tapLogoutButton,
      ),
      actions: <Widget>[
        IconButton(
          onPressed: controller.tapAddNewBlogButton,
          icon: const Icon(CupertinoIcons.add_circled),
        ),
      ],
    ),
    body: BlocConsumer<AuthBloc, AuthState>(
      listener: (final BuildContext context, final AuthState state) {
        switch (state) {
          case LoggedOut():
            showSnackBar(context, 'Logged Out Successfully');
            break;
          case Failure(:final String message):
            showSnackBar(context, message);
            break;
          default:
            break;
        }
      },
      builder:
          (
            final BuildContext context,
            final AuthState authState,
          ) => BlocConsumer<blog.BlogBloc, blog.BlogState>(
            listener: (final BuildContext context, final blog.BlogState state) {
              if (state is blog.Failure) {
                showSnackBar(context, state.message);
              }
            },
            builder: (final BuildContext context, final blog.BlogState state) {
              if (state is blog.Loading) {
                return const Loader();
              }
              if (state is blog.FetchSuccess) {
                return ListView.builder(
                  itemCount: state.blogs.length,
                  itemBuilder: (final BuildContext context, final int index) {
                    final Blog blog = state.blogs[index];
                    return BlogCard(
                      blog: blog,
                      color:
                          index.isEven
                              ? AppPalette.gradient1
                              : AppPalette.gradient2,
                      onTap: () {},
                    );
                  },
                );
              }
              return const SizedBox();
            },
          ),
    ),
  );
}
