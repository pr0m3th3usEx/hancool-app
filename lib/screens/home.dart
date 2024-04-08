// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hancool_app/config/theme/colors.dart';
import 'package:hancool_app/config/theme/icons.dart';
import 'package:hancool_app/config/theme/text.dart';
import 'package:hancool_app/screens/history.dart';
import 'package:hancool_app/screens/main/learn.dart';
import 'package:hancool_app/screens/main/play.dart';
import 'package:hancool_app/screens/settings/settings_home.dart';
import 'package:hancool_app/widgets/navigation/bottombar.dart';
import 'package:hancool_app/widgets/navigation/home_appbar.dart';

class HomeScreen extends StatelessWidget {
  HomeController homeController = Get.put(HomeController());

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: HomeAppBar(
          leading: (Text(
            'hancool',
            style: const CustomTextTheme()
                .headlineSmall
                ?.copyWith(color: ThemeColor.white, fontFamily: 'CookieRun'),
          )),
          trailing: Row(
            children: <Widget>[
              IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HistoryScreen()));
                  },
                  iconSize: 32,
                  padding: const EdgeInsets.all(0),
                  icon: const Icon(
                    MyIcons.history,
                    color: Colors.white,
                  )),
              IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SettingsHomeScreen()));
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
              child: Obx(() => homeController.screens[homeController.selectedIndex.value]),
            ),
          );
        }),
        bottomNavigationBar: Obx(
          () => BottomBar(
            navItems: const [
              NavigationItem(MyIcons.home, 'Home'),
              NavigationItem(MyIcons.cube, 'Learn'),
            ],
            selectedIndex: homeController.selectedIndex.value,
            onDestinationSelected: (index) => homeController.selectedIndex.value = index,
          ),
        ),
      );
    });
  }
}

class HomeController extends GetxController {
  RxInt selectedIndex = 0.obs;
  List<Widget> screens = [const PlayScreen(), const LearnScreen()];
}


//  Column(
//     mainAxisAlignment: MainAxisAlignment.start,
//     children: [
//       Text('NUMBER OF WORDS',
//           textAlign: TextAlign.center,
//           style: Theme.of(context).textTheme.bodyLarge),
//       Container(
//         width: 200.0,
//         height: 200.0,
//         decoration: const BoxDecoration(
//           color: Colors.blue,
//           borderRadius: BorderRadius.all(Radius.circular(12.0)),
//         ),
//       ),
//       ElevatedButton(
//         style: squareButton(ThemeColor.peachYellow),
//         onPressed: () {},
//         child: const Icon(
//           MyIcons.repeat,
//           size: 32,
//         ),
//       ),
//       TextButton(
//           onPressed: () {},
//           style: textButtonPrimary,
//           child: const Text('CREATE')),
//       IconButton(
//           onPressed: () {},
//           icon: const Icon(
//             MyIcons.home,
//             size: 24,
//           )),
//     ],
//   )