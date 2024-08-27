import 'package:flutter/material.dart';
import 'package:flutter_kokohub/constants/app_colors.dart';
import 'package:flutter_kokohub/ui/login/widgets/forgot_password_widget.dart';
import 'package:flutter_kokohub/ui/login/widgets/login_button_widget.dart';
import 'package:flutter_kokohub/ui/login/widgets/signup_widget.dart';
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
      child: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
              width: 100,
              child: Placeholder(),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: 8.0, bottom: 8.0, left: 24.0, right: 24.0),
              child: TextFieldLoginWidget(
                labelText: 'Email',
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: 8.0, bottom: 8.0, left: 24.0, right: 24.0),
              child: TextFieldLoginWidget(
                labelText: 'Password',
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: LoginButtonWidget(),
            ),
            ForgotPasswordWidget(),
            SignupWidget(),
          ],
        ),
      ),
    );
  }
}
