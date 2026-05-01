import 'package:flutter/material.dart';
import 'package:pedeja_app/core/theme/theme_manager.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsetsGeometry.only(bottom: 8),
          child: Image.asset("assets/logos/logo.png"),
        ),
        Text(
          "PedeJá".toUpperCase(),
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w800,
            color: AppColors.secondary,
          ),
        ),
      ],
    );
  }
}
