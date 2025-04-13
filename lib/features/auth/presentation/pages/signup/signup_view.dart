import 'package:flash_blog/core/theme/app_palette.dart';
import 'package:flash_blog/features/auth/presentation/pages/signup/signup_model.dart';
import 'package:flash_blog/features/auth/presentation/widgets/auth_field.dart';
import 'package:flash_blog/features/auth/presentation/widgets/auth_gradient_button.dart';
import 'package:flutter/material.dart';

abstract class SignupController {
  void tapBackButton();

  void tapSignInText();
}

class SignupView extends StatelessWidget {
  final SignupController controller;
  final SignupModel model;
  final GlobalKey<FormState> formKey;

  const SignupView({
    super.key,
    required this.formKey,
    required this.controller,
    required this.model,
  });

  @override
  Widget build(final BuildContext context) => Scaffold(
    appBar: AppBar(),
    body: Padding(
      padding: const EdgeInsets.all(15),
      child: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Sign Up.',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            AuthField(hintText: 'Email', controller: model.emailController),
            const SizedBox(height: 15),
            AuthField(hintText: 'Name', controller: model.usernameController),
            const SizedBox(height: 15),
            AuthField(
              hintText: 'Password',
              controller: model.passwordController,
              isObscureText: true,
            ),
            const SizedBox(height: 20),
            const AuthGradientButton(buttonText: 'Sign Up'),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: controller.tapSignInText,
              child: RichText(
                text: TextSpan(
                  text: 'Already have an account? ',
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
            ),
          ],
        ),
      ),
    ),
  );
}
