import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:hancool_app/config/theme/theme.dart';
import 'package:hancool_app/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Hancool',
        theme: CustomTheme.lightTheme,
        darkTheme: CustomTheme.darkTheme,
        // themeMode: ThemeMode.light,
        home: Builder(builder: (context) {
          return HomeScreen();
        }));
  }
}
