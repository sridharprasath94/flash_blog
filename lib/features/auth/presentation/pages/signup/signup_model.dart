import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../../../generated/features/auth/presentation/pages/signup/signup_model.freezed.dart';

@freezed
abstract class SignupModel with _$SignupModel {
  const factory SignupModel({
    required final bool isLoading,
    required final TextEditingController emailController,
    required final TextEditingController usernameController,
    required final TextEditingController passwordController,
  }) = _SignupModel;
}
