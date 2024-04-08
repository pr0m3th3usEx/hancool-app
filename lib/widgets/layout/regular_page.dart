import 'package:flutter/material.dart';
import 'package:hancool_app/widgets/navigation/regular_appbar.dart';

class RegularScreenLayout extends StatelessWidget {
  final String title;
  final Widget content;

  const RegularScreenLayout({super.key, required this.title, required this.content });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RegularAppBar(
        title: title,
      ),
      body: Container(
        child: content,
      ),
    );
  }
}
