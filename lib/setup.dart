import 'dart:async';
import 'package:nomixe/app.dart';
import 'package:nomixe/config/locator.dart';
import 'package:nomixe/data/source/local/hive_database.dart';
import 'package:nomixe/data/source/local/shared_pref.dart';
import 'package:nomixe/presentation/notifiers/connection.notifier.dart';
import 'package:nomixe/utils/logger.dart';
import 'package:flutter/material.dart';

Future<void> setup() async {
  WidgetsFlutterBinding.ensureInitialized();
  Log();
  GetLocator.setupLocator();
  await SharedPref.init();
  await ConnectionNotifier().initConnectivity();
  await HiveDatabase.init();
}
