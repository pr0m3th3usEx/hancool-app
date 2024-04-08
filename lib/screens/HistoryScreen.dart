import 'package:flutter/material.dart';
import 'package:hancool_app/config/theme/colors.dart';
import 'package:hancool_app/widgets/navigation/regular_appbar.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const RegularAppBar(
        title: 'History',
      ),
      body: Container(
        color: ThemeColor.apple,
      ),
    );
  }
}
