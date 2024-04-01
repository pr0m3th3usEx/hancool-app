import 'package:flutter/material.dart';
import 'package:hancool_app/config/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: CustomTheme.lightTheme,
        darkTheme: CustomTheme.darkTheme,
        // themeMode: ThemeMode.light,
        home: Builder(builder: (context) {
          return Scaffold(
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'NUMBER OF WORDS',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge
                ),
              ],
            ),
          );
        }));
  }
}
