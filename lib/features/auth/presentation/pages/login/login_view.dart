import 'package:flash_blog/core/theme/app_palette.dart';
import 'package:flash_blog/features/auth/presentation/pages/login/login_model.dart';
import 'package:flash_blog/features/auth/presentation/widgets/auth_field.dart';
import 'package:flash_blog/features/auth/presentation/widgets/auth_gradient_button.dart';
import 'package:flutter/material.dart';

abstract class LoginController {
  void tapBackButton();

  void tapSignUpText();

  void tapSignInButton();
}

class LoginView extends StatelessWidget {
  final LoginController controller;
  final LoginModel model;
  final GlobalKey<FormState> formKey;

  const LoginView({
    super.key,
    required this.formKey,
    required this.controller,
    required this.model,
  });

  @override
  Widget build(final BuildContext context) => Scaffold(
    body: Padding(
      padding: const EdgeInsets.all(15),
      child: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Sign In.',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            AuthField(hintText: 'Email', controller: model.emailController),
            const SizedBox(height: 15),
            AuthField(
              hintText: 'Password',
              controller: model.passwordController,
              isObscureText: true,
            ),
            const SizedBox(height: 20),
            AuthGradientButton(buttonText: 'Sign In', onPressed: controller.tapSignInButton),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: controller.tapSignUpText,
              child: RichText(
                text: TextSpan(
                  text: "Don't have an account? ",
                  style: Theme.of(context).textTheme.titleMedium,
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Sign Up',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: AppPalette.gradient2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
