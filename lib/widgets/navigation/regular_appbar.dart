import 'package:flutter/material.dart';
import 'package:hancool_app/config/theme/colors.dart';
import 'package:hancool_app/config/theme/text.dart';

class RegularAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback? onBackPressed;
  final Widget? actions;
  final Color? backgroundColor;

  const RegularAppBar(
      {super.key,
      required this.title,
      this.onBackPressed,
      this.actions,
      this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor ?? ThemeColor.spanishPink,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 25,
            right: 12.5,
            top: 25 / 2.5,
            bottom: 25 / 2.5,
          ),
          child: Stack(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Transform.translate(
                    offset: const Offset(-14, 0),
                    child: const BackButton(
                      color: ThemeColor.white,
                    ),
                  ),
                  Center(
                    child: Text(
                      'title',
                      style: const CustomTextTheme()
                          .headlineSmall
                          ?.copyWith(
                              color: ThemeColor.white),
                    ),
                  ),
                  const Spacer(),
                  actions ?? const SizedBox(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.maxFinite, 80);
}
