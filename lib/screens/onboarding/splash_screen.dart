import 'package:chatty/config/routes/routes_name.dart';
import 'package:chatty/core/constants/app_colors.dart';
import 'package:chatty/core/constants/app_icon.dart';
import 'package:chatty/core/widgets/app_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

import 'components/splash_loader_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 4), () {
      if (mounted) {
        Navigator.pushReplacementNamed(context, RoutesName.onboarding1);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.h),
              child: SvgPicture.asset(AppIcons.splashLogo),
            ),
            AppTextWidget(
              text: 'Chatty',
              color: AppColors.primary,
              fontWeight: FontWeight.w900,
              fontSize: 44,
            ),
            SizedBox(height: 18.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SplashLoaderWidget(),
                SizedBox(width: 4.w),
                AppTextWidget(
                  text: 'Loading...',
                  color: AppColors.primary,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
