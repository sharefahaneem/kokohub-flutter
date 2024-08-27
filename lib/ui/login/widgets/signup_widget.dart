import 'package:flutter/material.dart';
import 'package:flutter_kokohub/constants/app_colors.dart';

class SignupWidget extends StatelessWidget {
  const SignupWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
        text: "Don't have an account? ",
        style: TextStyle(color: Colors.black),
        children: <TextSpan>[
          TextSpan(
            text: 'Sign up',
            style: TextStyle(
              color: AppColors.loginButtonColor, // Color of the clickable text
            ),
          ),
        ],
      ),
    );
  }
}
