import 'package:flash_blog/features/auth/presentation/bloc/auth_bloc.dart';
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
    required final AuthBloc authBloc,
  }) {
    ref.onDispose(dispose);
    return SignupModel(
      isLoading: false,
      emailController: TextEditingController(),
      usernameController: TextEditingController(),
      passwordController: TextEditingController(),
    );
  }

  void dispose() {
    state.emailController.dispose();
    state.usernameController.dispose();
    state.passwordController.dispose();
  }

  @override
  void tapBackButton() {
    // TODO: implement tapBackButton
  }

  @override
  void tapSignInText() {
    navigationService.navigateToSignInView();
  }

  @override
  void tapSignUpButton() {
    debugPrint('Sign up button tapped');
    authBloc.add(
      AuthEvent.signup(
        email: state.emailController.text.trim(),
        username: state.usernameController.text.trim(),
        password: state.passwordController.text.trim(),
      ),
    );
  }

  @override
  void onSignupSuccess() {
    navigationService.navigateToBlogHomeView();
  }
}
