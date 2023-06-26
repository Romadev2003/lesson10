import 'package:flutter/material.dart';
import 'package:lesson10/core/di.dart';
import 'package:lesson10/data/sqlflite_helper.dart';
import 'package:lesson10/provider/main_provider.dart';
import 'package:lesson10/screens/splash_page.dart';
import 'package:provider/provider.dart';
final dbHelper = SqfliteHelper();
void main() {
  setup();
  runApp(
    ChangeNotifierProvider(
      create: (_) => MainProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}
