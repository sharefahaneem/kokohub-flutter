import 'package:flutter/material.dart';
import 'package:flutter_kokohub/constants/app_colors.dart';
import 'package:flutter/gestures.dart';

class SignupWidget extends StatelessWidget {
  const SignupWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: "Don't have an account? ",
        style: const TextStyle(color: Colors.black),
        children: <TextSpan>[
          TextSpan(
            text: 'Sign up.',
            style: const TextStyle(
              color: AppColors.loginButtonColor, // Color of the clickable text
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                //TODO: go to signup page
              },
          ),
        ],
      ),
    );
  }
}
