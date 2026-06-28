import 'package:flutter/material.dart';

import 'core/theme/app_theme.dart';
import 'screens/splash/splash_screen.dart';

void main() {
  runApp(const ZillaGhositFamilyApp());
}

class ZillaGhositFamilyApp extends StatelessWidget {
  const ZillaGhositFamilyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Zilla Ghosit Family',
      theme: AppTheme.lightTheme,
      home: const SplashScreen(),
    );
  }
}