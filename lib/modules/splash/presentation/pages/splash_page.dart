import 'package:flutter/material.dart';
import 'package:pedeja_app/core/theme/theme_manager.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsetsGeometry.only(bottom: 16),
              child: Image.asset(
                "assets/logos/logo.png",
              ),
            ),
            Text(
              "PedeJá",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w800,
                color: AppColors.secondary
              ),
            ),
          ],
        ),
      ),
    );
  }
}
