import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:hancool_app/config/theme/colors.dart';
import 'package:hancool_app/config/theme/icons.dart';
import 'package:hancool_app/config/theme/styles/button.dart';
import 'package:hancool_app/config/theme/theme.dart';
import 'package:hancool_app/widgets/navigation/CustomAppBar.dart';

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
            extendBodyBehindAppBar: true,
            appBar: const CustomAppBar(title: 'hancool'),
            body: LayoutBuilder(builder: (context, constraints) {
              var safePadding = MediaQuery.of(context).padding.top;
              return Container(
                padding: EdgeInsets.only(top: safePadding),
                decoration: const BoxDecoration(
                  gradient: ThemeColor.secondaryGradient,
                ),
                width: double.maxFinite,
                child: Container(
                  width: double.maxFinite,
                  height: double.maxFinite,
                  decoration: BoxDecoration(
                    color: ThemeColor.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('NUMBER OF WORDS',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.bodyLarge),
                      Container(
                        width: 200.0,
                        height: 200.0,
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        ),
                      ),
                      ElevatedButton(
                        style: squareButton(ThemeColor.peachYellow),
                        onPressed: () => {},
                        child: Icon(
                          MyIcons.repeat,
                          size: 32,
                        ),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text('CREATE'),
                          style: textButtonPrimary),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            MyIcons.home,
                            size: 24,
                          )),
                    ],
                  ),
                ),
              );
            }),
          );
        }));
  }
}
