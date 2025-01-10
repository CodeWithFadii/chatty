import 'package:chatty/core/constants/app_colors.dart';
import 'package:chatty/core/constants/app_icon.dart';
import 'package:chatty/core/constants/app_images.dart';
import 'package:chatty/core/widgets/app_button_widget.dart';
import 'package:chatty/core/widgets/app_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

import '../../config/routes/routes_name.dart';
import 'components/onboarding_indicator_widget.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacityAnimation;

  int _currentIndex = 0;

  final List<Map<String, String>> _content = [
    {
      'image': AppImages.onboarding1,
      'title': 'Get started now',
      'subtitle': 'The most advanced for chatting\nwith AI',
    },
    {
      'image': AppImages.onboarding2,
      'title': 'World of knowledge',
      'subtitle': 'Designed for the ease and comfort of your life',
    },
  ];

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _opacityAnimation = Tween<double>(begin: 1.0, end: 0.0).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOut,
    ));
  }

  void _onContinue() {
    if (_currentIndex < _content.length - 1) {
      _controller.forward().then((_) {
        setState(() {
          _currentIndex++;
        });
        _controller.reverse();
      });
    } else {
      _navigate();
    }
  }

  void _navigate() {
    if (mounted) {
      Navigator.pushReplacementNamed(context, RoutesName.dashboard);
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 5.h,
        backgroundColor: AppColors.backgroundBlack,
      ),
      body: Column(
        children: [
          AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return FadeTransition(
                opacity: _opacityAnimation,
                child: Column(
                  children: [
                    SvgPicture.asset(
                      _content[_currentIndex]['image']!,
                      height: 55.h,
                    ),
                    OnboardingIndicatorWidget(index: _currentIndex),
                    AppTextWidget(
                      padding: EdgeInsets.symmetric(vertical: 2.h),
                      text: _content[_currentIndex]['title']!,
                      fontWeight: FontWeight.w700,
                      fontSize: 28,
                    ),
                    AppTextWidget(
                      padding: EdgeInsets.symmetric(horizontal: 4.w),
                      text: _content[_currentIndex]['subtitle']!,
                      fontSize: 18,
                      height: 1.3,
                      fontWeight: FontWeight.w300,
                      color: AppColors.textGrey1,
                    ),
                  ],
                ),
              );
            },
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
                    onTap: _navigate,
                  ),
                ),
                SizedBox(width: 4.w),
                Expanded(
                  child: AppButtonWidget(
                    text: 'Continue',
                    textColor: AppColors.textBlack,
                    trailing: SvgPicture.asset(AppIcons.arrowRight),
                    onTap: _onContinue,
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
