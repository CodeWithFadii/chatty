import 'package:chatty/config/routes/routes.dart';
import 'package:chatty/config/routes/routes_name.dart';
import 'package:chatty/config/themes/app_theme.dart';
import 'package:chatty/screens/onboarding/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      initialRoute: RoutesName.splash,
      routes: Routes.routes,
    );
  }
}
