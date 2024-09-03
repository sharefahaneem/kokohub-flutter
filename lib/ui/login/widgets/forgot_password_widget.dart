import 'package:flutter/material.dart';
import 'package:flutter_kokohub/constants/app_colors.dart';

class ForgotPasswordWidget extends StatelessWidget {
  const ForgotPasswordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        foregroundColor: AppColors.loginButtonColor,
      ),
      onPressed: () {
        //TODO: go to forget password page
      },
      child: const Text(
        'Forgot Password?',
      ),
    );
  }
}
