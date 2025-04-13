import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../../../generated/features/auth/presentation/pages/login/login_model.freezed.dart';

@freezed
abstract class LoginModel with _$LoginModel {
  const factory LoginModel({
    required final bool isLoading,
    required final TextEditingController emailController,
    required final TextEditingController passwordController,
  }) = _LoginModel;
}
