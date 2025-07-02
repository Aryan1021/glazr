import 'package:flutter/material.dart';
import 'screens/animated_glass_card_screen.dart';
import 'theme/app_theme.dart';

class GlazrApp extends StatelessWidget {
  const GlazrApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Glazr',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const AnimatedGlassCardScreen(),
    );
  }
}
