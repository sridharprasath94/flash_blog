import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../../../generated/features/blog/presentation/pages/add_new_blog/add_new_blog_model.freezed.dart';

@freezed
abstract class AddNewBlogModel with _$AddNewBlogModel {
  const factory AddNewBlogModel({
    required final bool isLoading,
    required final TextEditingController titleController,
    required final TextEditingController contentController,
    required final List<String> selectedTopics,
    required final Option<File> image,
  }) = _AddNewBlogModel;
}
