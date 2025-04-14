import 'package:flutter/material.dart';

void showSnackBar(final BuildContext context, final String content) {
  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(SnackBar(content: Text(content)));
}
