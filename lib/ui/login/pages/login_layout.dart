import 'package:flutter/material.dart';
import 'package:flutter_kokohub/constants/app_colors.dart';
import 'package:flutter_kokohub/ui/login/widgets/forgot_password_widget.dart';
import 'package:flutter_kokohub/ui/login/widgets/login_button_widget.dart';
import 'package:flutter_kokohub/ui/login/widgets/signup_widget.dart';

import '../widgets/login_form_widget.dart';
import '../widgets/logo_widget.dart';

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
                  const Expanded(
                    child: LogoWidget(),
                  ),
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
