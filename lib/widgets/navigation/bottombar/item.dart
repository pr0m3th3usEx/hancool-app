import 'package:flutter/material.dart';

class BottomBarItem extends StatelessWidget {
  final Icon icon;
  final String label;

  const BottomBarItem({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        icon,
        Text(label),
      ],
    );
  }
}