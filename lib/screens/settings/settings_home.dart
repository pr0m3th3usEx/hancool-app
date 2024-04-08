import 'package:flutter/material.dart';
import 'package:hancool_app/widgets/layout/regular_page.dart';

class SettingsHomeScreen extends StatelessWidget {
  const SettingsHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const RegularScreenLayout(
      title: 'Settings Home', 
      content: Center(
        child: SizedBox(),
      )
    );
  }
}