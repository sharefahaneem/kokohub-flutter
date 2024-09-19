import 'package:flutter/material.dart';
import '../../../repository/service/shared_preferences_service.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
