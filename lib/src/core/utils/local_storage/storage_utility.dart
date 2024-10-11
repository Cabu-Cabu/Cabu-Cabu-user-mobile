import 'package:shared_preferences/shared_preferences.dart';

class TLocalStorage {
  static final TLocalStorage _instance = TLocalStorage._internal();

  factory TLocalStorage() {
    return _instance;
  }

  TLocalStorage._internal() {
    SharedPreferences.getInstance().then((prefs) {
      _prefs = prefs;
    });
  }

  static SharedPreferences? _prefs;

  Future<void> saveData<T>(String key, T value) async {
    final res = switch (T) {
      String => _prefs?.setString(key, value as String),
      int => _prefs?.setInt(key, value as int),
      double => _prefs?.setDouble(key, value as double),
      bool => _prefs?.setBool(key, value as bool),
      _ => throw Exception('Type not supported'),
    };
  }

  String? getData(String key) {
    return _prefs?.getString(key);
  }

  Future<void> removeData(String key) async {
    await _prefs?.remove(key);
  }

  Future<void> clearData() async {
    await _prefs?.clear();
  }

  bool containsKey(String key) {
    return _prefs?.containsKey(key) ?? false;
  }

  Future<void> saveStringList(String key, List<String> value) async {
    await _prefs?.setStringList(key, value);
  }
}
