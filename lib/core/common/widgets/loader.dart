import 'package:flutter/material.dart';

class Loader extends StatelessWidget {
  const Loader({super.key});

  @override
  Widget build(final BuildContext context) =>
      const Center(child: CircularProgressIndicator());
}
