import 'package:flash_blog/core/theme/app_palette.dart';
import 'package:flutter/material.dart';

class AuthGradientButton extends StatelessWidget {
  final String buttonText;
  const AuthGradientButton({super.key, required this.buttonText});

  @override
  Widget build(final BuildContext context) => DecoratedBox(
    decoration: BoxDecoration(
      gradient: const LinearGradient(
        colors: <Color>[AppPalette.gradient1, AppPalette.gradient2],
        begin: Alignment.bottomLeft,
        end: Alignment.topRight,
      ),
      borderRadius: BorderRadius.circular(10),
    ),
    child: ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(395, 55),
        backgroundColor: AppPalette.transparentColor,
        shadowColor: AppPalette.transparentColor,
      ),
      child: Text(
        buttonText,
        style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
      ),
    ),
  );
}
