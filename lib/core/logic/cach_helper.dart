import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static late final SharedPreferences _prefs;

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static int getCount() {
    return _prefs.getInt("count") ?? 0;
  }

  static Future<bool> setCount(int value) {
    return _prefs.setInt("count", value);
  }

  static Future<bool> clear() {
    return _prefs.clear();
  }
}
