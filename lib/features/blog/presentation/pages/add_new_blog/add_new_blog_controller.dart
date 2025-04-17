import 'dart:async';
import 'dart:io';

import 'package:flash_blog/core/utils/pick_image.dart';
import 'package:flash_blog/features/blog/presentation/bloc/blog_bloc.dart';
import 'package:flash_blog/features/blog/presentation/pages/add_new_blog/add_new_blog_model.dart';
import 'package:flash_blog/features/blog/presentation/pages/add_new_blog/add_new_blog_navigation_service.dart';
import 'package:flash_blog/features/blog/presentation/pages/add_new_blog/add_new_blog_view.dart';
import 'package:flash_blog/services/navigation_service/navigation_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '../../../../../generated/features/blog/presentation/pages/add_new_blog/add_new_blog_controller.g.dart';

@riverpod
class AddNewBlogControllerImpl extends _$AddNewBlogControllerImpl
    implements AddNewBlogController {
  @override
  AddNewBlogModel build({
    required final AddNewBlogNavigationService navigationService,
    required final BlogBloc blogBloc,
    required final String posterId,
  }) {
    ref.onDispose(dispose);
    return AddNewBlogModel(
      isLoading: false,
      titleController: TextEditingController(),
      contentController: TextEditingController(),
      selectedTopics: const <String>[],
      image: const None(),
    );
  }

  void dispose() {
    state.titleController.dispose();
    state.contentController.dispose();
  }

  @override
  void tapUploadButton() {
    state.image.fold(
      () {
        debugPrint('No image selected');
        NavigationService.currentContext.fold(
          () => debugPrint('No context available'),
          (final BuildContext context) {
            unawaited(
              showCupertinoDialog<void>(
                context: context,
                builder:
                    (final BuildContext context) => CupertinoAlertDialog(
                      title: const Text('No image selected'),
                      content: const Text('Please select an image to upload.'),
                      actions: <Widget>[
                        CupertinoDialogAction(
                          onPressed: () => Navigator.of(context).pop(),
                          child: const Text('OK'),
                        ),
                      ],
                    ),
              ),
            );
          },
        );
      },
      (final File image) => blogBloc.add(
        BlogEvent.uploadBlog(
          posterId: posterId,
          title: state.titleController.text.trim(),
          content: state.contentController.text.trim(),
          image: image,
          topics: state.selectedTopics,
        ),
      ),
    );
  }

  @override
  void onSelectTopic(final String topic) {
    final List<String> topics = state.selectedTopics;
    final List<String> updated =
        topics.contains(topic)
            ? topics.where((final String t) => t != topic).toList()
            : <String>[...topics, topic];

    state = state.copyWith(selectedTopics: updated);
    debugPrint('Selected topics: $updated');
  }

  @override
  void onSelectImage() {
    unawaited(
      pickImage()
          .match(
            (final Exception error) {
              debugPrint('Error selecting image: $error');
            },
            (final Option<File> image) {
              debugPrint('Image selected: $image');
              state = state.copyWith(image: image);
            },
          )
          .run(),
    );
  }

  @override
  void onUploadSuccess() {
    debugPrint('Upload successful');
    blogBloc.add(const BlogEvent.fetchAllBlogs());
    navigationService.goBack();
  }
}
