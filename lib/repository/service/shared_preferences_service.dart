import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {
  SharedPreferences? _prefs;

  SharedPreferencesService._privateConstructor();

  static final SharedPreferencesService instance =
      SharedPreferencesService._privateConstructor();

  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  Future<bool> setIsLogin(String key, bool value) async {
    return await _prefs?.setBool(key, value) ?? false;
  }

  bool? getIsLogin(String key) {
    return _prefs?.getBool(key);
  }

  // Remove a key
  Future<bool> remove(String key) async {
    return await _prefs?.remove(key) ?? false;
  }

  // Clear all data
  Future<bool> clear() async {
    return await _prefs?.clear() ?? false;
  }
}
