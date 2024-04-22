import 'package:flutter/material.dart';
import 'package:lawapp/utils/constants/app_colors.dart';
import 'package:lawapp/utils/constants/app_spacing.dart';
import 'package:lawapp/utils/widgets/bounce_effect.dart';
// ignore_for_file: must_be_immutable

enum RoundedButtonType {
  gradient,
  borded,
}

class RoundedMaterialButton extends StatelessWidget {
  RoundedMaterialButton({
    super.key,
    required this.ontap,
    required this.text,
    this.height = 60,
    this.width = double.infinity,
    this.color = Colors.black,
    this.radius = 100,
    this.buttonType = RoundedButtonType.gradient,
    this.showIcon = true,
    this.icon = Icons.camera,
  });

  VoidCallback ontap;
  String text;
  double? height;
  double? width;
  Color? color;
  double radius;
  RoundedButtonType buttonType;
  bool showIcon;
  IconData icon;
  @override
  Widget build(BuildContext context) {
    return Bounce(
      onTap: ontap,
      child: Container(
        height: height,
        width: width,
        padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: buttonType == RoundedButtonType.gradient
              ? AppColors.buttonFillColor
              : color,
        ),
        child: Container(
          decoration: buttonType == RoundedButtonType.borded
              ? BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(radius),
                )
              : null,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(text,
                  style: TextStyle(
                    color: buttonType == RoundedButtonType.gradient
                        ? Colors.black
                        : Colors.white,
                    fontSize:
                        buttonType == RoundedButtonType.gradient ? 20 : 30,
                    fontWeight: FontWeight.w900,
                  )),
              widthBox12,
              if (buttonType == RoundedButtonType.gradient && showIcon) ...[
                Icon(
                  icon,
                  color: Colors.black,
                  size: 30,
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
