import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';

class AuthField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final bool isObscureText;

  const AuthField({
    super.key,
    required this.hintText,
    required this.controller,
    this.isObscureText = false,
  });

  @override
  Widget build(final BuildContext context) => TextFormField(
    decoration: InputDecoration(hintText: hintText),
    validator:
        (final String? value) => optionOf(value).fold(
          () => null,
          (final String value) => value.isEmpty ? '$hintText is missing' : null,
        ),
    obscureText: isObscureText,
  );
}
