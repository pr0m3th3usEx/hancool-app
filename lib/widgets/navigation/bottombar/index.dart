import 'package:flutter/material.dart';
import 'package:hancool_app/config/theme/icons.dart';
import 'package:hancool_app/widgets/navigation/bottombar/item.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      destinations: const [
        BottomBarItem(icon: Icon(MyIcons.home), label: 'Home'),
        BottomBarItem(icon: Icon(MyIcons.cube), label: 'Learn'),
      ],
    );
  }
}