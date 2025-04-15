import 'package:flash_blog/features/blog/presentation/pages/add_new_blog/add_new_blog_model.dart';
import 'package:flutter/material.dart';

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
    appBar: AppBar(title: const Text('Add new blog')),
    body: const Center(child: Text(' Add new blog')),
  );
}
