import 'package:flutter/material.dart';
import 'package:pedeja_app/core/theme/theme_manager.dart';

class Layout extends StatelessWidget {
  final Widget child;
  final PreferredSizeWidget? appBar;
  final Widget? bottomNavigatorBar;

  const Layout({super.key, required this.child, this.appBar, this.bottomNavigatorBar});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: appBar,
      bottomNavigationBar: bottomNavigatorBar,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsetsGeometry.symmetric(
                horizontal: 16,
                vertical: 12,
              ),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 24),
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_back_ios_new,
                      color: AppColors.background,
                      size: 24,
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          "Login",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  color: AppColors.background,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                ),
                child: child,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
