import 'package:flutter/material.dart';
import 'package:flutter_kokohub/constants/app_colors.dart';
import 'package:flutter_kokohub/ui/login/widgets/forgot_password_widget.dart';
import 'package:flutter_kokohub/ui/login/widgets/login_button_widget.dart';
import 'package:flutter_kokohub/ui/login/widgets/text_field_login_widget.dart';

class LoginLayout extends StatelessWidget {
  const LoginLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColors.loginColor1,
            AppColors.loginColor2,
          ],
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 100,
              width: 100,
              child: Placeholder(),
            ),
            const Padding(
              padding: EdgeInsets.only(
                  top: 8.0, bottom: 8.0, left: 24.0, right: 24.0),
              child: TextFieldLoginWidget(
                labelText: 'Email',
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                  top: 8.0, bottom: 8.0, left: 24.0, right: 24.0),
              child: TextFieldLoginWidget(
                labelText: 'Password',
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: LoginButtonWidget(),
            ),
            const ForgotPasswordWidget(),
            RichText(
              text: const TextSpan(
                text: "Don't have an account? ",
                style: TextStyle(color: Colors.black),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Sign up',
                    style: TextStyle(
                      color: Colors.blue, // Color of the clickable text
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
