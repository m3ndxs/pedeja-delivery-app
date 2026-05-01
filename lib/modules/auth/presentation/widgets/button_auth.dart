import 'package:flutter/material.dart';
import 'package:pedeja_app/core/theme/theme_manager.dart';

class ButtonAuth extends StatelessWidget {
  final String title;
  final Color color;
  final Widget? route;

  const ButtonAuth({
    super.key,
    required this.title,
    required this.color,
    this.route,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Navigator.push(context, MaterialPageRoute(builder: (_) => route));
      },
      style: ElevatedButton.styleFrom(
        minimumSize: Size(207, 45),
        backgroundColor: color,
        foregroundColor: AppColors.background,
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(18),
        )
      ),
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleMedium,
      ),
    );
  }
}
