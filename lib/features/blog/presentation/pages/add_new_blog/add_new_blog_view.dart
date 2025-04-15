import 'package:flash_blog/core/utils/show_snackbar.dart';
import 'package:flash_blog/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:flash_blog/features/blog/presentation/pages/add_new_blog/add_new_blog_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class AddNewBlogController {
  void tapBackButton();

  void tapUploadButton();
}

class AddNewBlogView extends StatelessWidget {
  final AddNewBlogController controller;
  final AddNewBlogModel model;
  final GlobalKey<FormState> formKey;

  const AddNewBlogView({
    super.key,
    required this.formKey,
    required this.controller,
    required this.model,
  });

  @override
  Widget build(final BuildContext context) => Scaffold(
    appBar: AppBar(
      title: const Text('Blog'),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.logout),
          onPressed: () {
            context.read<AuthBloc>().add(const AuthEvent.signOut());
          },
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
          (final BuildContext context, final AuthState state) =>
              const Center(child: Text('Logged In')),
    ),
  );
}
