import 'dart:async';

import 'package:flash_blog/features/auth/presentation/pages/signup/signup_model.dart';
import 'package:flash_blog/features/auth/presentation/pages/signup/signup_navigation_service.dart';
import 'package:flash_blog/features/auth/presentation/pages/signup/signup_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '../../../../../generated/features/auth/presentation/pages/signup/signup_controller.g.dart';

@riverpod
class SignupControllerImpl extends _$SignupControllerImpl
    implements SignupController {
  @override
  SignupModel build({
    required final SignupNavigationService navigationService,
  }) {
    scheduleMicrotask(init);
    ref.onDispose(dispose);
    return SignupModel(
      isLoading: false,
      emailController: TextEditingController(),
      passwordController: TextEditingController(), usernameController: TextEditingController(),
    );
  }

  void init() {

  }

  void dispose() {
    state.emailController.dispose();
    state.passwordController.dispose();
  }

  @override
  void tapBackButton() {
    // TODO: implement tapBackButton
  }
}