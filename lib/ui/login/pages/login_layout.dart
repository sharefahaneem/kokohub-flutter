import 'package:flutter/material.dart';
import 'package:flutter_kokohub/constants/app_colors.dart';
import 'package:flutter_kokohub/ui/login/widgets/forgot_password_widget.dart';
import 'package:flutter_kokohub/ui/login/widgets/login_button_widget.dart';
import 'package:flutter_kokohub/ui/login/widgets/signup_widget.dart';
import 'package:flutter_kokohub/ui/login/widgets/text_field_login_widget.dart';

import '../../../utils/authentication_validator.dart';

class LoginLayout extends StatefulWidget {
  const LoginLayout({super.key});

  @override
  State<LoginLayout> createState() => _LoginLayoutState();
}

class _LoginLayoutState extends State<LoginLayout> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool? get validate => _formKey.currentState?.validate();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.center,
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
            child: IntrinsicHeight(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Expanded(child: LogoImage()),
                  EmailFormField(emailController: emailController),
                  PasswordFormField(passwordController: passwordController),
                  const SizedBox(height: 34.0),
                  LoginButtonWidget(
                    onPressed: () {
                      // TODO: create logic statement for login

                      // if (validate != null && validate == true) {
                      //   context.read<AuthBloc>().add(LoginRequested(
                      //         emailController.text.trim(),
                      //         passwordController.text.trim(),
                      //       ));
                      // }
                    },
                  ),
                  const SizedBox(height: 16.0),
                  const ForgotPasswordWidget(),
                  const SizedBox(height: 60.0),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 40.0),
                    child: SignupWidget(),
                  ),
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

class EmailFormField extends StatelessWidget {
  final TextEditingController emailController;

  const EmailFormField({
    super.key,
    required this.emailController,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0, left: 24.0, right: 24.0),
      child: TextFieldLoginWidget(
        controller: emailController,
        keyboardType: TextInputType.emailAddress,
        keyboardAction: TextInputAction.next,
        labelText: 'Email',
        onSaved: (value) {
          emailController.text = value!;
        },
        validator: (value) => AuthenticationValidator.emailValidation(value),
      ),
    );
  }
}

class PasswordFormField extends StatelessWidget {
  final TextEditingController passwordController;

  const PasswordFormField({
    super.key,
    required this.passwordController,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0, left: 24.0, right: 24.0),
      child: TextFieldLoginWidget(
        controller: passwordController,
        isPassword: true,
        labelText: 'Password',
        keyboardAction: TextInputAction.next,
        onSaved: (value) {
          passwordController.text = value!;
        },
        validator: (value) => AuthenticationValidator.normalValidation(value),
      ),
    );
  }
}
