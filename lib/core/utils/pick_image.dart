import 'dart:io';

import 'package:fpdart/fpdart.dart';
import 'package:image_picker/image_picker.dart';

TaskEither<Exception, Option<File>> pickImage() => TaskEither<Exception, Option<File>>.tryCatch(
  () async {
    final XFile? pickedFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );
    if (pickedFile == null) {
      return const None();
    }

    final File file = File(pickedFile.path);
    if (!file.existsSync()) {
      throw Exception('Failed to create file from image');
    }

    return some(file);
  },
  (final Object error, final StackTrace stackTrace) =>
      Exception(error.toString()),
);
