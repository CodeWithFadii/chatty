import 'package:chatty/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../../core/constants/app_icon.dart';
import '../../../providers/dashboard_state_provider.dart';
import 'dashboard_nav_item.dart';

class DashboardNavbar extends StatelessWidget {
  const DashboardNavbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 1.3.h),
      margin: EdgeInsets.symmetric(vertical: 2.5.h, horizontal: 4.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(64),
        color: AppColors.backgroundGrey1,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Consumer<DashboardStateProvider>(builder: (context, provider, child) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                DashboardNavItem(
                  icon: provider.selectedIndex == 0 ? AppIcons.homeFilled : AppIcons.home,
                  title: 'Home',
                  index: 0,
                ),
                DashboardNavItem(
                  icon: provider.selectedIndex == 1 ? AppIcons.exploreFilled : AppIcons.explore,
                  title: 'Explore',
                  index: 1,
                ),
                DashboardNavItem(
                  icon: AppIcons.history,
                  title: 'History',
                  index: 2,
                ),
              ],
            );
          })
        ],
      ),
    );
  }
}
