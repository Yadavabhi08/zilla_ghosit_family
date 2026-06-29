import 'package:flutter/material.dart';

import 'core/theme/app_theme.dart';
import 'routes/app_router.dart';

void main() {
  runApp(const ZillaGhositFamilyApp());
}

class ZillaGhositFamilyApp extends StatelessWidget {
  const ZillaGhositFamilyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Zilla Ghosit Family',
      theme: AppTheme.lightTheme,
      routerConfig: appRouter,
    );
  }
}