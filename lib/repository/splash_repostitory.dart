import 'package:flutter_kokohub/repository/service/shared_preferences_service.dart';

class SplashRepository {
  final SharedPreferencesService service;

  SplashRepository({required this.service});

  bool? getIsLogin() => service.getIsLogin('ISLOGIN');
}
