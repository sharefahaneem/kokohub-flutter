import 'package:flutter/material.dart';
import 'package:flutter_kokohub/constants/app_colors.dart';

class LoginButtonWidget extends StatelessWidget {
  const LoginButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.loginButtonColor,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
      onPressed: () {},
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Text('Login'),
      ),
    );
  }
}
