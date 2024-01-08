import 'dart:convert';
import 'dart:developer';
import 'package:nomixe/utils/logger.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveDatabase {
  static String loginCheck = 'loginCheck';
  static String authToken = 'authToken';
  static String userId = 'userId';
  static String loginPlatform = 'loginPlatform';
  static String feedBox = 'feedBox';
  static String appBox = 'app';

  static String currentLang = 'currentLang';

  HiveDatabase._();
  static final HiveDatabase _instance = HiveDatabase._();
  factory HiveDatabase() => _instance;

  Box? _box;
  Box get box => _box!;

  static Future<void> init() async {
    await Hive.initFlutter();
    _instance._box = await Hive.openBox(appBox);
    Log.i('AppBox Open: ${_instance._box?.isOpen}');
  }

  static void storeValue(String key, dynamic value) async {
    _instance._box!.put(key, value);
  }

  static dynamic getValue(String key) {
    return _instance._box?.get(key);
  }
}
