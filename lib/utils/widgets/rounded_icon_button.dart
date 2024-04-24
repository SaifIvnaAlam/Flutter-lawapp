import 'package:flutter/material.dart';
import 'package:lawapp/utils/constants/app_colors.dart';
import 'package:lawapp/utils/widgets/bounce_effect.dart';

class RoundedIconButton extends StatelessWidget {
  RoundedIconButton(
      {super.key,
      required this.icon,
      required this.onTap,
      this.backGroundColor = AppColors.containerFillColor,
      this.iconColor = AppColors.canvasColor});

  IconData icon;
  VoidCallback onTap;
  Color backGroundColor;
  Color iconColor;
  @override
  Widget build(BuildContext context) {
    return Bounce(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: backGroundColor,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Icon(
          icon,
          color: iconColor,
        ),
      ),
    );
  }
}
