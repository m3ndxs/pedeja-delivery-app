import 'package:flutter/material.dart';
import 'package:pedeja_app/core/theme/theme_manager.dart';
import 'package:pedeja_app/core/widgets/layout.dart';
import 'package:pedeja_app/modules/auth/presentation/widgets/button_auth.dart';
import 'package:pedeja_app/modules/splash/presentation/widgets/logo.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsetsGeometry.only(bottom: 8),
              child: Logo(),
            ),
            Padding(
              padding: const EdgeInsetsGeometry.only(bottom: 42),
              child: Text(
                "Tá com fome? Bora pedir!",
                style: Theme.of(
                  context,
                ).textTheme.titleMedium?.copyWith(color: Colors.white),
              ),
            ),
            ButtonAuth(
              title: "Entrar",
              color: AppColors.primaryDark,
            ),
            SizedBox(height: 8),
            ButtonAuth(
              title: "Registrar-se",
              color: AppColors.secondary,
            ),
          ],
        ),
      ),
    );
  }
}
