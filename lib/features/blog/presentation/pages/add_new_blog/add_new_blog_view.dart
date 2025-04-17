import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flash_blog/core/common/widgets/loader.dart';
import 'package:flash_blog/core/constants/constants.dart';
import 'package:flash_blog/core/theme/app_palette.dart';
import 'package:flash_blog/core/utils/show_snackbar.dart';
import 'package:flash_blog/features/blog/presentation/bloc/blog_bloc.dart';
import 'package:flash_blog/features/blog/presentation/pages/add_new_blog/add_new_blog_model.dart';
import 'package:flash_blog/features/blog/presentation/widgets/blog_editor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';

abstract class AddNewBlogController {
  void tapBackButton();

  void tapUploadButton();

  void onSelectImage();

  void onSelectTopic(final String topic);

  void onUploadSuccess();
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
      actions: <Widget>[
        IconButton(
          onPressed: () {
            optionOf(formKey.currentState).fold(
              () => debugPrint('No form state available'),
              (final FormState formState) {
                if (formState.validate() && model.selectedTopics.isNotEmpty) {
                  controller.tapUploadButton();
                }
              },
            );
          },
          icon: const Icon(Icons.done_rounded),
        ),
      ],
    ),
    body: BlocConsumer<BlogBloc, BlogState>(
      listener: (final BuildContext context, final BlogState state) {
        switch (state) {
          case Failure(:final String message):
            debugPrint(message);
            showSnackBar(context, message);
            break;
          case UploadSuccess():
            showSnackBar(context, 'Blog uploaded successfully');
            controller.onUploadSuccess();
            break;
          default:
            break;
        }
      },
      builder: (final BuildContext context, final BlogState state) {
        if (state is Loading) {
          return const Loader();
        }
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Form(
              key: formKey,
              child: Column(
                children: <Widget>[
                  model.image.fold(
                    () => GestureDetector(
                      onTap: controller.onSelectImage,
                      child: DottedBorder(
                        color: AppPalette.borderColor,
                        dashPattern: const <double>[10, 4],
                        radius: const Radius.circular(10),
                        borderType: BorderType.RRect,
                        strokeCap: StrokeCap.round,
                        child: const SizedBox(
                          height: 150,
                          width: double.infinity,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.folder_open, size: 40),
                              SizedBox(height: 15),
                              Text(
                                'Select your image',
                                style: TextStyle(fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    (final File image) => GestureDetector(
                      onTap: controller.onSelectImage,
                      child: SizedBox(
                        width: double.infinity,
                        height: 150,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.file(image, fit: BoxFit.cover),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children:
                          Constants.topics
                              .map(
                                (final String topic) => Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: GestureDetector(
                                    onTap:
                                        () => controller.onSelectTopic(topic),
                                    child: Chip(
                                      label: Text(topic),
                                      color:
                                          model.selectedTopics.contains(topic)
                                              ? const WidgetStatePropertyAll<
                                                Color?
                                              >(AppPalette.gradient1)
                                              : null,
                                      side:
                                          model.selectedTopics.contains(topic)
                                              ? null
                                              : const BorderSide(
                                                color: AppPalette.borderColor,
                                              ),
                                    ),
                                  ),
                                ),
                              )
                              .toList(),
                    ),
                  ),
                  BlogEditor(
                    controller: model.titleController,
                    hintText: 'Blog title',
                  ),
                  const SizedBox(height: 10),
                  BlogEditor(
                    controller: model.contentController,
                    hintText: 'Blog content',
                  ),
                ],
              ),
            ),
          ),
        );
      },
    ),
  );
}
