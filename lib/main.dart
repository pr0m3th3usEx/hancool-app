import 'package:flutter/material.dart';
import 'package:hancool_app/config/theme/colors.dart';
import 'package:hancool_app/config/theme/icons.dart';
import 'package:hancool_app/config/theme/styles/button.dart';
import 'package:hancool_app/config/theme/text.dart';
import 'package:hancool_app/config/theme/theme.dart';
import 'package:hancool_app/screens/HistoryScreen.dart';
import 'package:hancool_app/widgets/navigation/home_appbar.dart';
import 'package:hancool_app/widgets/navigation/bottombar.dart';

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
            appBar: HomeAppBar(
              leading: (Text(
                'hancool',
                style: const CustomTextTheme().headlineSmall?.copyWith(
                    color: ThemeColor.white, fontFamily: 'CookieRun'),
              )),
              trailing: Row(
                children: <Widget>[
                  IconButton(
                      onPressed: () {
                        Navigator.push(context, 
                          MaterialPageRoute(builder: (context) => const HistoryScreen())
                        );
                      },
                      iconSize: 32,
                      padding: const EdgeInsets.all(0),
                      icon: const Icon(
                        MyIcons.history,
                        color: Colors.white,
                      )),
                  IconButton(
                      onPressed: () {
                        // print('test');
                      },
                      iconSize: 32,
                      padding: const EdgeInsets.all(0),
                      icon: const Icon(
                        MyIcons.setting,
                        color: Colors.white,
                      )),
                ],
              ),
            ),
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
                  decoration: const BoxDecoration(
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
                        onPressed: () {},
                        child: const Icon(
                          MyIcons.repeat,
                          size: 32,
                        ),
                      ),
                      TextButton(
                          onPressed: () {},
                          style: textButtonPrimary,
                          child: const Text('CREATE')),
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
            bottomNavigationBar: BottomBar(navItems: [
              NavigationItem(MyIcons.home, 'Home'),
              NavigationItem(MyIcons.cube, 'Learn'),
            ]),
          );
        }));
  }
}
