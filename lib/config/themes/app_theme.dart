import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';

class AppTheme {
  static ThemeData get theme {
    return ThemeData(
      colorScheme: const ColorScheme.light().copyWith(
        primary: AppColors.primary,
      ),
      primaryColor: AppColors.primary,
      fontFamily: 'PlusJakartaSans',
      useMaterial3: true,
      scaffoldBackgroundColor: AppColors.backgroundBlack,
    );
  }
}
