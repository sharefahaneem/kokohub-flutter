import 'package:flutter/material.dart';
import 'package:flutter_kokohub/repository/service/shared_preferences_service.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('Not Login'),
          ElevatedButton(
              onPressed: () {
                SharedPreferencesService.instance.setIsLogin('ISLOGIN', true);
              },
              child: const Text('Set isLogin to true')),
          ElevatedButton(
              onPressed: () {
                SharedPreferencesService.instance.clear();
              },
              child: const Text('Clear Shared Preferences'))
        ],
      ),
    );
  }
}
