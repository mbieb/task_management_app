import 'package:task_management_app/app/infrastructure/messaging_datasource/messaging_datasource.dart';
import 'package:task_management_app/config/injection.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> configure() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await Hive.initFlutter('.hidden');
  configureDependencies();
  getIt<MessasgingDataSource>().initialize();
}
