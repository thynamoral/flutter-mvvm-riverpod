import 'package:client/core/theme/app_color_pallete.dart';
import 'package:client/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [AppColor.gradient1, AppColor.gradient2],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
        borderRadius: AppTheme.borderRadius(),
      ),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.transparentColor,
          shadowColor: AppColor.transparentColor,
        ),
        child: Text('Sign Up'),
      ),
    );
  }
}
