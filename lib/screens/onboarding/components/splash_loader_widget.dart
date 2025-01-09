import 'package:chatty/core/constants/app_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:math' as math;

class SplashLoaderWidget extends StatefulWidget {
  const SplashLoaderWidget({super.key});

  @override
  State<SplashLoaderWidget> createState() => _SplashLoaderWidgetState();
}

class _SplashLoaderWidgetState extends State<SplashLoaderWidget> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Transform.rotate(
          angle: _controller.value * 2 * math.pi,
          child: SvgPicture.asset(AppIcons.loading1),
        );
      },
    );
  }
}
