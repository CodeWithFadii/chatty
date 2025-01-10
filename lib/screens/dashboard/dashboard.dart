import 'package:chatty/core/constants/app_colors.dart';
import 'package:chatty/core/constants/app_icon.dart';
import 'package:chatty/core/widgets/app_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'components/dashboard_navbar.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.4.h),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppTextWidget(
                        text: 'Chatty',
                        color: AppColors.primary,
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
                        decoration: BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          children: [
                            SvgPicture.asset(AppIcons.star),
                            SizedBox(width: 1.w),
                            AppTextWidget(
                              text: '30',
                              color: AppColors.textBlack,
                              fontWeight: FontWeight.w600,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 4.h),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 2.4.h, horizontal: 4.w),
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppTextWidget(
                              text: 'Tap to chat',
                              color: AppColors.textBlack,
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                            ),
                            SvgPicture.asset(AppIcons.arrowRightFilled)
                          ],
                        ),
                        SizedBox(height: 2.h),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SvgPicture.asset(
                              AppIcons.smallLogo,
                            ),
                            SizedBox(width: 2.w),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 3.w),
                                decoration: BoxDecoration(
                                  color: AppColors.almond2,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(16),
                                    bottomRight: Radius.circular(16),
                                    bottomLeft: Radius.circular(16),
                                  ),
                                ),
                                child: AppTextWidget(
                                  textAlign: TextAlign.start,
                                  color: AppColors.textBlack,
                                  fontSize: 14,
                                  height: 1.3,
                                  text: 'Ask me any questions you have. I can answer all questions and talk to you',
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            DashboardNavbar(),
          ],
        ),
      ),
    );
  }
}
