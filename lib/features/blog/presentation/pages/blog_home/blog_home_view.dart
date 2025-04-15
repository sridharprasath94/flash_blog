import 'package:flash_blog/core/utils/show_snackbar.dart';
import 'package:flash_blog/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:flash_blog/features/blog/presentation/pages/blog_home/blog_home_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class BlogHomeController {
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
      title: const Text('Blog Home'),
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
