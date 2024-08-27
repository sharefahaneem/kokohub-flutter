import 'package:flutter/material.dart';
import 'package:flutter_kokohub/constants/app_colors.dart';

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
            TextFormField(),
            TextFormField(),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Login'),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Forgot Password'),
            ),
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
