import 'package:flutter/material.dart';
import 'package:hancool_app/config/theme/colors.dart';

class BottomBar extends StatelessWidget {
  final List<NavigationItem> navItems;

  const BottomBar({super.key, this.navItems = const []});

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: ThemeColor.white,
      child: SafeArea(
        child: Container(
          height: 80,
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
          decoration: BoxDecoration(
            color: ThemeColor.white,
            borderRadius: const BorderRadius.all(Radius.circular(24)),
            boxShadow: [
              BoxShadow(
                color: OpacityColor.of(ThemeColor.raisinBlack, 0.25),
                offset: const Offset(0, 12),
                spreadRadius: 0,
                blurRadius: 20,
              )
            ],
          ),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                navItems.length,
                (index) => Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Tooltip(
                        message: navItems[index].label,
                        child: IconButton(
                          onPressed: () {},
                          padding: const EdgeInsets.all(0),
                          icon: Icon(
                            navItems[index].icon,
                            size: 24,
                            color: index == 0
                                ? ThemeColor.spanishBistre
                                : ThemeColor.raisinBlack,
                          )
                        ),
                      ),
                      AnimatedBar(
                        isActive: index == 0,
                      ),
                    ],
                  )
                ),
              )
            ),
        ),
      ),
    );
  }
}

class AnimatedBar extends StatelessWidget {
  final bool isActive;

  const AnimatedBar({super.key, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      height: 4,
      width: isActive ? 24 : 0,
      decoration: const BoxDecoration(
        color: ThemeColor.spanishBistre,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
}

class NavigationItem {
  final IconData icon;
  final String label;

  const NavigationItem(this.icon, this.label);
}