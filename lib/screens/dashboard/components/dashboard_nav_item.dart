import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/widgets/app_text_widget.dart';
import '../../../providers/dashboard_state_provider.dart';

class DashboardNavItem extends StatelessWidget {
  const DashboardNavItem({
    super.key,
    required this.icon,
    required this.title,
    required this.index,
  });

  final String icon, title;
  final int index;

  @override
  Widget build(BuildContext context) {
    final selectedIndex = context.watch<DashboardStateProvider>().selectedIndex;
    return GestureDetector(
      onTap: () => context.read<DashboardStateProvider>().updateSelectedIndex(index),
      child: AnimatedAlign(
        alignment: selectedIndex == index ? Alignment.center : Alignment.topCenter,
        duration: const Duration(milliseconds: 1000),
        curve: Curves.easeOutBack,
        child: AnimatedOpacity(
          opacity: selectedIndex == index ? 1.0 : 0.7,
          duration: const Duration(milliseconds: 300),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(
                icon,
                color: selectedIndex == index ? AppColors.primary : AppColors.textGrey1,
                height: 2.6.h,
                width: 5.2.w,
              ),
              SizedBox(height: 1.h),
              AppTextWidget(
                text: title,
                fontSize: 13,
                color: selectedIndex == index ? AppColors.primary : AppColors.textGrey1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
