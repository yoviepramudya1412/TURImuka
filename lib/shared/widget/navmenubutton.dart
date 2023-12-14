// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:TURImuka/shared/theme/colors.dart';

class NavMenuButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final Function onTap;
  final int index;
  final int selectedIndex;

  const NavMenuButton({
    Key? key,
    required this.label,
    required this.icon,
    required this.onTap,
    required this.index,
    required this.selectedIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool selected = index == selectedIndex;
    return InkWell(
      onTap: () => onTap(),
      child: Column(
        children: [
          Icon(
            icon,
            size: 24.0,
            color:
                selected ? ThemeColors.accentColor : ThemeColors.secondaryColor,
          ),
          Text(
            label,
            style: TextStyle(
              fontSize: 12.0,
              color: selected
                  ? ThemeColors.accentColor
                  : ThemeColors.secondaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
