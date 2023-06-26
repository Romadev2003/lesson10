import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:lesson10/data/repository.dart';
import 'package:lesson10/data/sqlflite_helper.dart';

final di = GetIt.instance;

Future<void> setup() async {
  WidgetsFlutterBinding.ensureInitialized();
  di.registerSingleton(SqfliteHelper());
  di.registerSingleton(DataRepository());

  await di.get<SqfliteHelper>().initDatabase();
}
