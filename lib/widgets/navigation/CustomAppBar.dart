import 'package:flutter/material.dart';
import 'package:hancool_app/config/theme/colors.dart';
import 'package:hancool_app/config/theme/text.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Widget? leading;
  final Widget? titleWidget;

  const CustomAppBar({
    super.key,
    this.title = '',
    this.leading,
    this.titleWidget,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 25 / 2.5,
        ),
        child: Stack(
          children: [
            Positioned.fill(
              child: titleWidget == null ?
                Center(
                  child: Text(
                    title, 
                    style: const CustomTextTheme()
                      .headlineSmall?.copyWith(color: ThemeColor.white, fontFamily: 'CookieRun'),
                  ),
                ) : Center(child: titleWidget)
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                leading ?? 
                  Transform.translate(
                    offset: const Offset(-14, 0),
                    child: const BackButton(color: ThemeColor.white,),
                  )
              ],
            )
          ],
        ),
      )
    );
  }

  @override
  Size get preferredSize => const Size(double.maxFinite, 80);
}
