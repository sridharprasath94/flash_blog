import 'package:flash_blog/core/theme/app_palette.dart';
import 'package:flash_blog/features/auth/presentation/pages/login/login_model.dart';
import 'package:flash_blog/features/auth/presentation/widgets/auth_field.dart';
import 'package:flash_blog/features/auth/presentation/widgets/auth_gradient_button.dart';
import 'package:flutter/material.dart';

abstract class LoginController {
  void tapBackButton();

  void tapSignInButton();
}

class LoginView extends StatelessWidget {
  final LoginController controller;
  final LoginModel model;

  LoginView({super.key, required this.controller, required this.model});

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

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
            const AuthGradientButton(buttonText: 'Sign In'),
            const SizedBox(height: 20),
            RichText(
              text: TextSpan(
                text: "Don't have an account? ",
                style: Theme.of(context).textTheme.titleMedium,
                children: <TextSpan>[
                  TextSpan(
                    text: 'Sign In',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: AppPalette.gradient2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
