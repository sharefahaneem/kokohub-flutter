import 'package:flutter/material.dart';
import 'package:flutter_kokohub/repository/service/shared_preferences_service.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('Is Login'),
          ElevatedButton(
              onPressed: () {
                SharedPreferencesService.instance.setIsLogin('ISLOGIN', false);
              },
              child: const Text('Set isLogin to false')),
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
