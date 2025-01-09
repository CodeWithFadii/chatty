import 'package:chatty/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class OnboardingIndicatorWidget extends StatelessWidget {
  final int index;

  const OnboardingIndicatorWidget({required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 2.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            height: index == 0 ? 14 : 10,
            width: index == 0 ? 14 : 10,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: index == 0 ? AppColors.primary : AppColors.grey3,
            ),
          ),
          SizedBox(width: 2.5.w),
          AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            height: index == 1 ? 14 : 10,
            width: index == 1 ? 14 : 10,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: index == 1 ? AppColors.primary : AppColors.grey3,
            ),
          ),
        ],
      ),
    );
  }
}
