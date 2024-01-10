import 'dart:io';

enum AppEnvironment { DEV, STAGING, PROD }

abstract class EnvInfo {
  static AppEnvironment _environment = AppEnvironment.DEV;

  static void initialize(AppEnvironment environment) {
    EnvInfo._environment = environment;
  }

  static String get appName => _environment._appTitle;
  static String get envName => _environment._envName;
  static String get connectionString => _environment._connectionString;
  static AppEnvironment get environment => _environment;
  static bool get isProduction => _environment == AppEnvironment.PROD;
}

extension _EnvProperties on AppEnvironment {
  static const _appTitles = {
    AppEnvironment.DEV: 'Development',
    AppEnvironment.STAGING: 'Staging',
    AppEnvironment.PROD: 'Production',
  };

  static const _connectionStrings = {
    AppEnvironment.DEV: 'https://dummyjson.com',
    AppEnvironment.STAGING: 'https://dummyjson.com',
    AppEnvironment.PROD: 'https://dummyjson.com',
  };

  static const _envs = {
    AppEnvironment.DEV: 'dev',
    AppEnvironment.STAGING: 'staging',
    AppEnvironment.PROD: 'prod',
  };

  String get _appTitle => _appTitles[this]!;
  String get _envName => _envs[this]!;
  String get _connectionString => _connectionStrings[this]!;
}

final kTestMode = Platform.environment.containsKey('FLUTTER_TEST');
