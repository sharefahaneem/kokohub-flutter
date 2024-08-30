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
    final screenHeight = MediaQuery.of(context).size.height;

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
      child: SafeArea(
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: screenHeight),
            child: const IntrinsicHeight(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LogoImage(),
                  _EmailFormField(),
                  _PasswordFormField(),
                  SizedBox(height: 34.0),
                  LoginButtonWidget(),
                  SizedBox(height: 16.0),
                  ForgotPasswordWidget(),
                  SizedBox(height: 40.0),
                  SignupWidget(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class LogoImage extends StatelessWidget {
  const LogoImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24.0),
      child: Image.asset(
        "assets/images/login_logo.png",
        height: MediaQuery.of(context).size.height * 0.3,
        width: MediaQuery.of(context).size.width * 0.4,
      ),
    );
  }
}

class _EmailFormField extends StatelessWidget {
  const _EmailFormField();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 12.0, left: 24.0, right: 24.0),
      child: TextFieldLoginWidget(
        labelText: 'Email',
      ),
    );
  }
}

class _PasswordFormField extends StatelessWidget {
  const _PasswordFormField();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 12.0, left: 24.0, right: 24.0),
      child: TextFieldLoginWidget(
        labelText: 'Password',
      ),
    );
  }
}
