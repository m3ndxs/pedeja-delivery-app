import 'package:flutter/material.dart';
import 'package:pedeja_app/core/theme/theme_manager.dart';
import 'package:pedeja_app/modules/splash/presentation/pages/splash_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "PedeJá",
      debugShowCheckedModeBanner: false,
      theme: ThemeManager.lightTheme,
      darkTheme: ThemeManager.darkTheme,
      home: const SplashPage(),
    );
  }
}