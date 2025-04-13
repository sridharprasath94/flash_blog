import 'dart:io';

import 'package:desktop_window/desktop_window.dart';
import 'package:flash_blog/core/theme/theme.dart';
import 'package:flash_blog/services/navigation_service/navigation_service_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    await DesktopWindow.setMinWindowSize(const Size(400, 800));
    await DesktopWindow.setMaxWindowSize(const Size(400, 800));
  }
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(final BuildContext context, final WidgetRef ref) => MaterialApp.router(
    debugShowCheckedModeBanner: false,
    title: 'Blog App',
    theme: AppTheme.darkThemeMode,
    routerConfig: ref.read(goRouterProvider),
  );
}
