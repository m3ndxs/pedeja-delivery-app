import 'package:flutter/material.dart';
import 'package:pedeja_app/core/theme/theme_manager.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  double opacity = 0.0;

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(milliseconds: 300), () {
      setState(() {
        opacity = 1.0;
      });
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Center(
        child: AnimatedOpacity(
          opacity: opacity,
          duration: Duration(seconds: 2),
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
                "PedeJá".toUpperCase(),
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w800,
                  color: AppColors.secondary
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
