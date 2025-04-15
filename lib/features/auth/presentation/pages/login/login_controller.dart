import 'package:flash_blog/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:flash_blog/features/auth/presentation/pages/login/login_model.dart';
import 'package:flash_blog/features/auth/presentation/pages/login/login_navigation_service.dart';
import 'package:flash_blog/features/auth/presentation/pages/login/login_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '../../../../../generated/features/auth/presentation/pages/login/login_controller.g.dart';

@riverpod
class LoginControllerImpl extends _$LoginControllerImpl
    implements LoginController {
  @override
  LoginModel build({
    required final LoginNavigationService navigationService,
    required final AuthBloc authBloc,
  }) {
    ref.onDispose(dispose);
    return LoginModel(
      isLoading: false,
      emailController: TextEditingController(),
      passwordController: TextEditingController(),
    );
  }

  void dispose() {
    state.emailController.dispose();
    state.passwordController.dispose();
  }

  @override
  void tapBackButton() {
    // TODO: implement tapBackButton
  }

  @override
  void tapSignUpText() {
    navigationService.navigateToSignUpView();
  }

  @override
  void tapSignInButton() {
    debugPrint('Sign In button tapped');
    authBloc.add(
      AuthEvent.login(
        email: state.emailController.text.trim(),
        password: state.passwordController.text.trim(),
      ),
    );
  }
}
