import 'dart:io';

import 'package:fpdart/fpdart.dart';
import 'package:image_picker/image_picker.dart';

TaskEither<Exception, File> pickImage() => TaskEither<Exception, File>.tryCatch(
  () async {
    final XFile? pickedFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );
    if (pickedFile == null) {
      throw Exception('No image selected');
    }

    final File file = File(pickedFile.path);
    if (!file.existsSync()) {
      throw Exception('Failed to create file from image');
    }

    return file;
  },
  (final Object error, final StackTrace stackTrace) =>
      Exception(error.toString()),
);
