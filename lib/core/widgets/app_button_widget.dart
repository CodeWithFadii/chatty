import 'package:chatty/core/constants/app_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constants/app_colors.dart';
import 'package:sizer/sizer.dart';

import 'app_text_widget.dart';

class AppButtonWidget extends StatelessWidget {
  final String text;
  final Color? textColor;
  final Color? color;
  final FontWeight? fontWeight;

  final VoidCallback onTap;
  final double? fontSize;
  final Widget? trailing;
  final EdgeInsets? padding;
  final double? width;
  final BorderRadiusGeometry? borderRadius;
  const AppButtonWidget({
    super.key,
    required this.text,
    required this.onTap,
    this.textColor,
    this.padding,
    this.width,
    this.borderRadius,
    this.color,
    this.fontWeight,
    this.trailing,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        decoration: BoxDecoration(
          color: color ?? AppColors.primary,
          borderRadius: borderRadius ?? BorderRadius.circular(64),
        ),
        padding: padding ?? EdgeInsets.symmetric(vertical: 1.8.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppTextWidget(
              text: text,
              color: textColor ?? AppColors.textWhite,
              fontSize: fontSize ?? 16.5,
              fontWeight: fontWeight ?? FontWeight.w700,
            ),
            if (trailing != null)
              Padding(
                padding: EdgeInsets.only(left: 2.w),
                child: trailing!,
              )
          ],
        ),
      ),
    );
  }
}
