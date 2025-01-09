import 'package:chatty/core/constants/app_colors.dart';
import 'package:chatty/core/constants/app_icon.dart';
import 'package:chatty/core/constants/app_images.dart';
import 'package:chatty/core/widgets/app_button_widget.dart';
import 'package:chatty/core/widgets/app_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

import 'components/onboarding_indicator_widget.dart';

class Onboarding1Screen extends StatelessWidget {
  const Onboarding1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 5.h,
        backgroundColor: AppColors.backgroundBlack,
      ),
      body: Column(
        children: [
          SvgPicture.asset(
            AppImages.onboarding1,
            height: 55.h,
          ),
          OnboardingIndicatorWidget(index: 0),
          AppTextWidget(
            padding: EdgeInsets.symmetric(vertical: 2.h),
            text: 'Get started now',
            fontWeight: FontWeight.w700,
            fontSize: 28,
          ),
          AppTextWidget(
            padding: EdgeInsets.symmetric(horizontal: 4.w),
            text: 'The most advanced for chatting\nwith AI',
            fontSize: 20,
            height: 1.3,
            fontWeight: FontWeight.w300,
            color: AppColors.textGrey1,
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(left: 4.w, right: 4.w, bottom: 4.h),
            child: Row(
              children: [
                Expanded(
                  child: AppButtonWidget(
                    text: 'Skip',
                    textColor: AppColors.primary,
                    color: AppColors.backgroundGrey1,
                    onTap: () {},
                  ),
                ),
                SizedBox(width: 4.w),
                Expanded(
                  child: AppButtonWidget(
                    text: 'Continue',
                    textColor: AppColors.textBlack,
                    trailing: SvgPicture.asset(AppIcons.arrowRight),
                    onTap: () {},
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
